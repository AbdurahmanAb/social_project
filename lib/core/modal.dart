import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/constants.dart';

class BottomModal extends StatefulWidget {
  
  const BottomModal({super.key});

  @override
  State<BottomModal> createState() => _BottomModalState();
}

class _BottomModalState extends State<BottomModal> {





  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed("/feed?id=3");
      },
      child: Padding(
        padding: EdgeInsets.all(Constants.height10),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Constants.white,
                  borderRadius: BorderRadius.circular(21)),
              padding: EdgeInsets.symmetric(
                  vertical: Constants.height10, horizontal: Constants.height15),
              height: 72,
              child: Row(
                children: [
                  Image.asset("assets/feed/icon_popup.png"),
                  SizedBox(
                    width: Constants.height10,
                  ),
                  const Text(
                    "갭이 고정이 해제되었습니다.",
                    style: TextStyle(
                        fontSize: 16,
                        color: Constants.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }



}
class ShowPopup{

  static void ShowDeletedPopup(){
    Get.back();
Get.showSnackbar(GetSnackBar(backgroundColor: Colors.transparent, duration: Duration(seconds: 2),messageText: BottomModal(),));
}
}