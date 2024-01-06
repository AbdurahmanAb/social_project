import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio_group_v2/radio_group_controller.dart';

import '../../../../core/radio_button_group.dart';
import '../../../../core/text/HeaderText.dart';
import '../../../../core/ui/app_button.dart';
import '../../../../utils/constants.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {

  bool disabled = true;
  bool show = true;

  String label = "";
  List<RadioOption> options = [
    RadioOption("OPT1", "자라섬 재즈/캠핑 패스티벌"),
    RadioOption("OPT2", "군항제 캠핑 패스티벌"),
    RadioOption("OPT3", "고아웃 캠핑 패스티벌"),
    RadioOption("OPT4", "양양 서퍼비치 캠핑 축제")
  ];
  RadioGroupController myController = RadioGroupController();


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: Constants.height20, horizontal: Constants.height20),
      decoration: BoxDecoration(
          color: const Color(0xFF545456),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(
            text: "최고의 캠핑 패스티발은?",
            size: 14,
          ),
          const SizedBox(
            height: 7,
          ),
          const Text("복수 선택 불가"),
          SizedBox(
            height: Constants.height10,
          ),
          LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return RadioButtonGroup(
                vertical: true,
                options: options,
                crossAxisAlignment: CrossAxisAlignment.start,
                textStyle: const TextStyle(fontSize: 15, color: Colors.white),
                selectedColor: const Color(0xFF363638),
                mainColor: const Color(0xFF363638),
                selectedIconColor: Constants.appColor,
                selectedBorderSide:
                    const BorderSide(width: 1, color: Constants.appColor),
                buttonWidth: constraints.maxWidth,
                buttonHeight: 42,
                callback: (RadioOption val) {
                  setState(() {
                    label = val.label;
                    disabled = false;
                  });
                  print(val);
                });
          }),
          SizedBox(
            height: Constants.height10,
          ),
          AppButton(
            text: "투표하기",
            disabled: disabled,
          ),
          SizedBox(
            height: Constants.height10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "투표참여 : 16명",
              ),
              Text("7 일 뒤 종료")
            ],
          )
        ],
      ),
    );
  }
}
