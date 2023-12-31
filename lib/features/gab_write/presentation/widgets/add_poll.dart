import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/core/report_bottom.dart';
import 'package:kim/core/ui/app_button.dart';
import 'package:kim/features/gab_write/presentation/widgets/bottom_sheet_radio.dart';
import 'package:kim/features/gab_write/presentation/widgets/input_poll.dart';
import 'package:kim/utils/constants.dart';


class PollWidget extends StatefulWidget {
  const PollWidget({super.key});

  @override
  State<PollWidget> createState() => _PollWidgetState();
}

class _PollWidgetState extends State<PollWidget> {
  List<Widget> polls = [];
  void addPopUp() {
    polls.add(InputPoll(text: "항목 입력"));
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(13),
      backgroundColor: Constants.Iconbg,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 1, color: Color(0xFF7C7C80)),
        borderRadius: BorderRadius.circular(10),
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
              Expanded(
                flex: 3,
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: "투표 제목을 입력하세요.",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              //   Text('투표 제목을 입력하세요.'),
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
//  ListView(
//   children: polls,
//  ),

          AppButton(
            text: "+ 추가하기",
          
              
          ),
          SizedBox(
            height: Constants.height15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("중복 투표 허용"),
              Transform.scale(
                scale: .7,
                child: Switch(
                  activeColor: Constants.appColor,
                  activeTrackColor: Constants.appColor,
                  value: true, onChanged: (value) {
                  value = !value;
                }),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("투표 기간 선택"),
              GestureDetector(
                onTap: () {
                  BottomradionSheet.showBottomSheet(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("3일"), Icon(Icons.arrow_drop_down)],
                ),
              )
            ],
          )
        ],
      )),
    );
    ;
  }
}

class Addpoll {
  static void showAddPoll(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return PollWidget();
        });
  }
}
