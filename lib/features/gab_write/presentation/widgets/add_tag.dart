import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/features/gab_write/presentation/widgets/input_poll.dart';
import 'package:kim/features/gab_write/presentation/widgets/tag_button.dart';
import 'package:kim/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:radio_group_v2/radio_group_v2.dart';

class Addtag extends StatefulWidget {
  @override
  _AddtagState createState() => _AddtagState();
}

class _AddtagState extends State<Addtag> {
  RadioGroupController myController = RadioGroupController();
  final GlobalKey<RadioGroupState> radioGroupKey1 =
      GlobalKey<RadioGroupState>();
  bool disabled = true;

  void enableButton() {
    setState(() {
      disabled = false;
    });
  }

  void onRadioGroupChanged(value) {
    setState(() {
      disabled = false;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
            color: Constants.Iconbg,
            borderRadius: BorderRadius.vertical(top: Radius.circular(8))),
        padding:
            EdgeInsets.symmetric(vertical: 40, horizontal: Constants.height10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                enableButton();
              },
              child: const TextField(
                decoration: InputDecoration.collapsed(
                  hintText: "@ 브랜드 입력 (최대 5개)",
                  hintStyle: TextStyle(
                    color: Color(0xFF7C7C80),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Constants.height20,
            ),
            const Text(
              "사용자의 브랜드의 언급량에 따라 ",
              style: TextStyle(
                color: Color(0xFF7C7C80),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              "서브 브랜드 채널이 생성됩니다.",
              style: TextStyle(
                color: Color(0xFF7C7C80),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TagButton(colors: Constants.white, txt: "취 소"),
                SizedBox(
                  width: 10,
                ),
               
                TagButton(colors: Constants.appColor, txt: "확 인")
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ToggleAddTag {
  static void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      constraints: BoxConstraints(
        minHeight: 0.8,
        maxHeight: Constants.screen_height * 0.8,
      ),
      builder: (BuildContext context) {
        return Addtag();
      },
    );
  }
}
