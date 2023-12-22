import 'package:flutter/material.dart';
import 'package:kim/core/ui/Appbutton.dart';
import 'package:kim/features/gab_write/presentation/widgets/input_poll.dart';
import 'package:kim/utils/constants.dart';

class Addpoll {
  static void showAddPoll(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(10),
           backgroundColor: Constants.Iconbg,
   surfaceTintColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFF7C7C80)),
              borderRadius: BorderRadius.circular(16),
            ),
            insetPadding: EdgeInsets.all(Constants.height15),
            content: Container(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('투표 제목을 입력하세요.'),
                    Image.asset("assets/icons/button_closed.png")
                  ],
                ),
                SizedBox(
                  height: Constants.height15,
                ),
                InputPoll(text: "항목 입력"),
                SizedBox(
                  height: Constants.height15,
                ),
                InputPoll(text: "항목 입력"),
                SizedBox(
                  height: Constants.height15,
                ),
                AppButton(
                  text: "+ 추가하기",
                  disabled: true,
                ),
                SizedBox(
                  height: Constants.height15,
                ),
                Row(
                  children: [
                    Text("중복 투표 허용")
                  ],
                )
              ],
            )),
          );
        });
  }
}
