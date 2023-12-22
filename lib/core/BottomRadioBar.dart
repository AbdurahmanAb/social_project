import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/src/routes/get_transition_mixin.dart';
import 'package:kim/core/text/MidText.dart';
import 'package:kim/core/Row_widget.dart';
import 'package:kim/core/text/HeaderText.dart';
import 'package:kim/core/ui/Appbutton.dart';
import 'package:radio_group_v2/radio_group_v2.dart';
import '../utils/constants.dart';

class BottomRadio extends StatefulWidget {
  @override
  _BottomRadioState createState() => _BottomRadioState();
}

class _BottomRadioState extends State<BottomRadio> {
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
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        padding: EdgeInsets.symmetric(
            vertical: Constants.height20, horizontal: Constants.height10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.close),
                Expanded(child: Center(child: Text("갭 신고"))),
              ],
            ),
            const Divider(),
            SizedBox(
              height: Constants.height20,
            ),
            const Text("갭을 신고하는 이유를 알려주세요."),
            SizedBox(
              height: Constants.height20,
            ),
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
                values: [
                  "특정인, 특정 집단 비방",
                  "폭언, 욕설, 차별, 혐오 발언",
                  "광고, 스팸성",
                  "중복, 도배",
                  "주제와 무관",
                  "선정적인 컨텐츠, 음란물",
                  "기타 부적절한 글, 댓글"
                ],
              ),
            ),
            SizedBox(
              height: Constants.height20,
            ),
            Row(
              children: [
                const Icon(
                  Icons.info_outlined,
                  color: Constants.pink,
                ),
                SizedBox(
                  width: Constants.height10,
                ),
                const Text(
                  "주의사항",
                  style: TextStyle(
                      color: Constants.pink, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: Constants.height10,
            ),
            const Text(
              "운영정책 위반 여부를 확인하기 위해 신고한 댓글 내용을 위갭팀으로 접수합니다. 허위로 신고할 경우 서비스 이용이 제한될 수 있으니 유의해 주시기 바랍니다.",
              style:
                  TextStyle(color: Constants.pink, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: Constants.height20),
            AppButton(text: "신고하기", disabled: disabled),
          ],
        ),
      ),
    );
  }
}

class BottomRadioSheet {
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
        return BottomRadio();
      },
    );
  }
}
