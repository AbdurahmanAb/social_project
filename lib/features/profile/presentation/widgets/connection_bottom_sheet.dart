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
                height: 32,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Constants.chipColor),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 129, 129, 128),
                ),
                child: const Center(
                  child: Text(
                    '이번 주',
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
                height: 32,
             decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Constants.chipColor),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 129, 129, 128),
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
                height: 32,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Constants.chipColor),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 134, 134, 131),
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
