import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/constants.dart';

class DialogContet extends StatelessWidget {
  final String title;
  final String content;

   DialogContet({super.key, required this.title, required this.content,});

  @override
  Widget build(BuildContext context) {
    return  Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: Constants.height10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Color.fromARGB(255, 21, 21, 21)),
        height: 147,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
            title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: Constants.lgFont,
                fontWeight: FontWeight.w700,
              ),
            ),
            Divider(),
            Text(
             content,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: Constants.mdFont,
                fontWeight: FontWeight.w500,
              ),
            ),
            InkWell(
              onTap: (){
                Get.back();
              },
              child: Container(
                width: double.maxFinite,
                height: 35,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Constants.white,
                ),
                child: Center(
                  child: Text(
                    '확 인',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Constants.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}