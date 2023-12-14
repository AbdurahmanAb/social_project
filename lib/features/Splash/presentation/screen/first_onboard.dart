import 'package:flutter/material.dart';
import 'package:kim/core/HeaderText.dart';
import 'package:kim/utils/constsnts.dart';

class FirtOnBoard extends StatefulWidget {
  const FirtOnBoard({super.key});

  @override
  State<FirtOnBoard> createState() => _FirtOnBoardState();
}

class _FirtOnBoardState extends State<FirtOnBoard> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
Image.asset("assets/join/image.png",fit: BoxFit.cover ,height: Constants.screen_height/3 ,width:double.maxFinite,),
          Container(
            padding: EdgeInsets.all( 20),
            height: Constants.screen_height/2,
            child:  PageView(
//controller: PageController(),
              children: [
            Column(
 
              children: [Header(text: "H위갭을 이렇게 사용하세요.",
              
              ),
              SizedBox(height: 10,),
              Text("서비스 이용과정에서 불편했던 부분을 기재해주시면 서비스 개선에 참고하도록 하겠습니다.")
              ],
            ),
             Column(
              children: [Header(text: "Hello 2")],
            ),
             Column(
              children: [Header(text: "Hello 3")],
            ),
             Column(
              children: [Header(text: "Hello 4")],
            ),
            ],
            )
          ),
          
        ],
      )),
    );
  }
}