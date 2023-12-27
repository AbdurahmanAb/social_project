import 'package:flutter/material.dart';
import 'package:kim/core/ui/app_button.dart';
import 'package:kim/utils/constants.dart';

class ConnectionBottomSheet {
  static void showConnectionBottomSheet(context) {
    showModalBottomSheet(
      backgroundColor: Constants.bottom,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
      context: context,
      builder: (BuildContext context) {
        return Container(
          // color: Constants.Iconbg,
          height: Constants.screen_height * .35,
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 36,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Constants.chipColor),
                  borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 109, 109, 109),
                ),
                child: const Center(
                    child: Text(
                  '알 림',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                )),
              ),
              Container(
                height: 36,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Constants.chipColor),
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 109, 109, 109),
                ),
                child: const Center(
                  child: Text(
                    '이번 달',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Container(
                height: 36,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Constants.chipColor),
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 109, 109, 109),
                ),
                child: const Center(
                  child: Text(
                    '이번 달',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              AppButton(text: "닫기")
            ],
          ),
        );
      },
    );
  }
}
