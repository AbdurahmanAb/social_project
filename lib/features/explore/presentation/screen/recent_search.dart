import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kim/core/drawer/custom_drawer.dart';
import 'package:kim/core/topbar.dart';
import 'package:kim/features/explore/presentation/widgets/feed_search.dart';
import 'package:kim/features/explore/presentation/widgets/vertical_card.dart';

import '../../../../utils/constants.dart';
import '../widgets/brand.dart';

class RecentPage extends StatefulWidget {
  const RecentPage({super.key});

  @override
  State<RecentPage> createState() => _RecentPageState();
}

class _RecentPageState extends State<RecentPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _textEditingController = TextEditingController();

  String searchText = "";
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Constants.Iconbg,
      drawer: CustomDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // TopBar(Triger: () {
              //   _scaffoldKey.currentState!.openDrawer();
              // }),
              Container(
                width: double.maxFinite,
                color: Constants.black,
                padding: EdgeInsets.all(Constants.height10),
                child: Row(
                  children: [
                    SizedBox(
                      width: Constants.screen_width * 0.8,
                      height: 30,
                      child: TextField(
                        controller: _textEditingController,
                        onChanged: (value) {
                          setState(() {
                            searchText = value;
                          });
                        },
                        style: TextStyle(fontSize: Constants.mdFont),
                        decoration: InputDecoration(
                            prefixIcon:
                                Image.asset("assets/Lounge/icon_explore.png"),
                            contentPadding: EdgeInsets.all(5),
                            hintStyle:
                                const TextStyle(fontWeight: FontWeight.w200),
                            hintText: "위갭을 탐험하세요",
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            filled: true,
                            fillColor: Constants.bottom),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text("취소")
                  ],
                ),
              ),
              searchText == "nike"
                  ? SingleChildScrollView(
                      child: ListView.separated(
                        padding: EdgeInsets.only(top: 20),
                        itemCount: 6,
                        shrinkWrap: true,
                        separatorBuilder: (context, index) => Divider(
                          thickness: 2,
                          color: Constants.black,
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(Constants.height15),
                            child: InkWell(
                              overlayColor: MaterialStatePropertyAll(Colors.transparent),
                              onTap: () {
                                Get.toNamed("/feedexplore");

                              },
                              child: Brand(
                                brand: "assets/avatar/nike.png",
                                brandText: "@나이키",
                                brandText2: "#조던",
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  : Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: Constants.height10,
                                    vertical: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "최근 검색어",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Text(
                                      "전체 삭제",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: Constants.height10,
                                    vertical: 5),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("라코스테"),
                                      Icon(Icons.close)
                                    ]),
                              ),
                              Divider(
                                color: Constants.black,
                                height: Constants.height10,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: Constants.height15,
                                    right: Constants.height15,
                                    top: 5,
                                    bottom: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text("오늘의"),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Image.asset("assets/avatar/gab.png")
                                      ],
                                    ),
                                    Icon(CupertinoIcons.forward)
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: Constants.height15,
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    left: Constants.height15,
                                    right: Constants.height15,
                                    bottom: Constants.height15,
                                    top: 0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "LACOSTE(라코스테)는 1920년대 프랑스의 테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다.테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다.",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    SizedBox(
                                      height: Constants.height10,
                                    ),
                                    Row(
                                      children: [
                                        Brand(
                                          Height: 30,
                                          brand: "assets/avatar/lacoste.png",
                                          brandText: "@라코스테",
                                          brandText2: "#테니스 ",
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Constants.black,
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.all(Constants.height15),
                          child: Column(
                            children: [
                              SizedBox(
                                height: Constants.height10,
                              ),
                              Container(
                                // padding: const EdgeInsets.all(25),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "LACOSTE(라코스테)는 1920년대 프랑스의 테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다.테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다.",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    SizedBox(
                                      height: Constants.height10,
                                    ),
                                    Row(
                                      children: [
                                        Brand(
                                          Height: 30,
                                          brand: "assets/avatar/keNZO.png",
                                          brandText: "@라코스테",
                                          brandText2: "#테니스 ",
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Constants.black,
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.all(Constants.height15),
                          child: Column(
                            children: [
                              SizedBox(
                                height: Constants.height10,
                              ),
                              Container(
                                // padding: const EdgeInsets.all(25),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "LACOSTE(라코스테)는 1920년대 프랑스의 테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다.테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다.",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    SizedBox(
                                      height: Constants.height10,
                                    ),
                                    Row(
                                      children: [
                                        Brand(
                                          Height: 30,
                                          brand: "assets/avatar/BURBERY.png",
                                          brandText: "@라코스테",
                                          brandText2: "#테니스 ",
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
