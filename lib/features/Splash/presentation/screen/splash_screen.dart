import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kim/utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    Timer(Duration(seconds: 2), () {
      Get.toNamed("/first");
     });
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Constants.mainColor,
      body: SafeArea(
        child: Container(
          child: Stack(
       
            children: [
              Center(
                child: Image.asset("assets/join/splash_symbol.png",fit: BoxFit.cover, ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("버전정보 v. 1.0.1"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}