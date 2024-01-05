import 'package:flutter/material.dart';
import 'package:kim/core/drawer/custom_drawer.dart';
import 'package:kim/core/ui/top_buttons.dart';
import 'package:kim/core/topbar.dart';
import 'package:kim/features/Lounge_Feed/presentation/widgets/text-buttom.dart';
import 'package:kim/utils/constants.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _controller = TextEditingController();

  List<String> searchItems = ['에어조던', '나이키', 'item3'];

  String searchText = "";
  bool isLoading = true;

  List<String> filteredItems = [];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: const CustomDrawer(),
        backgroundColor: Constants.lightblack,
        body: SafeArea(
            child: GestureDetector(
          onTap: () {},
          child: Container(
            child: Column(
              children: [
                TopBar(Triger: () {
                  _scaffoldKey.currentState!.openDrawer();
                }),
                TopButtons(
                  logo: "assets/avatar/goout.png",
                ),
                TextButtons(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 10),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 32,
                            width: Constants.screen_width * 0.82,
                            child: TextField(
                              //  maxLines: 2,

                              controller: _controller,
                              onChanged: (value) {
                                setState(() {
                                  searchText = value;
                                  isLoading = true;
                                });

                                value != ''
                                    ? filteredItems = searchItems
                                        .where(
                                            (item) => item.contains(searchText))
                                        .toList()
                                    : null;

                                setState(() {
                                  isLoading = false;
                                });
                              },
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w300),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: '검색어 입력',
                                  // hintStyle: TextStyle(fontSize: 10),
                                  filled: true,
                                  fillColor: Color.fromARGB(255, 78, 78, 81),
                                  prefixIcon: Image.asset(
                                    "assets/Lounge/icon_search.png",
                                    height: 15,
                                  ),
                                  contentPadding: EdgeInsets.only(
                                      top: 0, bottom: 0, left: 45, right: 20)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text("취소")
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 8, horizontal: Constants.height15),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("최근 검색어"), Text("전체 삭제")],
                  ),
                ),
                Expanded(
                    child: isLoading
                        ? Loading()
                        : filteredItems.isEmpty
                            ? NoResults()
                            : SearchResults(filteredItems)),
              ],
            ),
          ),
        )));
  }

  Widget Loading() => Center(
        child: Text("최근 검색어 내역이 없습니다."),
      );

  Widget NoResults() =>
      Center(child: Image.asset("assets/Lounge/illust_search.png"));

  Widget SearchResults(items) => ListView.builder(
        itemCount: items.length,
        itemBuilder: (_, index) => Column(
          children: [
            ListTile(
              title: Text(items[index]),
              trailing: Icon(Icons.close),
            ),
            Divider(
              color: Constants.black,
            )
          ],
        ),
      );
}
