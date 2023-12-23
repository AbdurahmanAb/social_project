import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/core/ui/Appbutton.dart';
import 'package:radio_group_v2/radio_group_v2.dart';
import '../../../../utils/constants.dart';

class Bottomradion extends StatefulWidget {
  @override
  _BottomradionState createState() => _BottomradionState();
}

class _BottomradionState extends State<Bottomradion> {
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
        padding: EdgeInsets.symmetric(
            vertical: Constants.height20, horizontal: Constants.height10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                enableButton();
              },
              child: RadioGroup(
                onChanged: onRadioGroupChanged,
                key: radioGroupKey1,
                controller: myController,
                decoration: const RadioGroupDecoration(
                  spacing: 40.0,
                  labelStyle: TextStyle(),
                  
                  activeColor: Constants.appColor,
                ),
                values: [" 7일", "6일", "5일", "4일", "3일 ", "2일 ", "1일 "],
              ),
            ),
            SizedBox(
              height: Constants.height20,
            ),
            AppButton(text: "닫 기", disabled: disabled),
          ],
        ),
      ),
    );
  }
}

class BottomradionSheet {
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
        return Bottomradion();
      },
    );
  }
}
