import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kim/core/BottomBar.dart';
import 'package:kim/core/button.dart';
import 'package:kim/core/top_buttons.dart';
import 'package:kim/core/topbar.dart';
import 'package:kim/utils/constants.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.mainColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              
               top: 0,
              left: 0,
              right: 0,
              child: Column(
              children: [
                  TopBar(),
                TopButtons(),
              ],
            )),
            Container(
            
              child: Column(
                 
                children: [
                
            Expanded(
              child:   Center(
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/Lounge/welcome.png"),
              SizedBox(height: Constants.height10,),
             GestureDetector(
              onTap: () {
                Get.toNamed("/main");
              },
              child: AppButton(text: "갭 작성하기"))
                ],
                  ),
                ),
              ),
            )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar()
    );
  }
}