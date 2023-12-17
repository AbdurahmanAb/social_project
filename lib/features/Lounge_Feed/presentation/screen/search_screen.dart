import 'package:flutter/material.dart';
import 'package:kim/core/top_buttons.dart';
import 'package:kim/core/topbar.dart';
import 'package:kim/features/Lounge_Feed/presentation/widgets/TextButtons.dart';
import 'package:kim/utils/constants.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
 final TextEditingController _controller = TextEditingController();
   render(){
if(_controller.text=="abc"){
return Container();
}else{
  return Center(child: Image.asset("assets/Lounge/illust_search.png"));
}
    }


      @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  print("text is" +_controller.text);
    return Scaffold(
body: SafeArea(
  child:   Container(
    child:    Column(
      children: [
        TopBar(),
        // TopButtons(text: "GO OUT",),
        TextButtons(),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 10),
              child: Stack(
                
                children: [
                  SizedBox(
                    height: 28,
                    width: Constants.screen_width*0.8,
                    child: TextField(
                    controller: _controller,
                    onChanged: (value) {
                      print(_controller.text);
                    },
                    style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius:BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide.none, 
                      ),
                 
                      hintText: '검색어 입력',
                      hintStyle: TextStyle(
                        fontSize: 10
                      ),
                      
                      filled: true,
                      fillColor: Color.fromARGB(255, 94, 93, 93),
                      contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 35, right: 20)
                    ),
                              ),
                  ),
                      Positioned(top: 8, left: 8, child: Image.asset("assets/Lounge/icon_search.png", height: 15,))
                
                ],
              ),
            ),
            Text("취소")
          ],
        ),
       Padding(
         padding:  EdgeInsets.symmetric(vertical: 8,horizontal: Constants.height10),
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("최근 검색어"),
            
            Text("전체 삭제")
          ],
         ),
       ),
       Expanded(
         child: Center(
          child:   render()
         ),
       ),
     

        


      ],
    ),
  ),
),
    );
  }
}