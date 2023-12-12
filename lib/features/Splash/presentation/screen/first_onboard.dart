import 'package:flutter/material.dart';
import 'package:kim/features/Splash/presentation/widgets/HeaderText.dart';
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
Image.asset("assets/join/image.png",fit: BoxFit.cover ,height: Constants.screen_height/2 ,width:double.maxFinite,),
          Container(
            
            height: Constants.screen_height/2,
            child:  PageView(
//controller: PageController(),
              children: [
            Column(
              children: [Header(text: "Hello")],
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