import 'package:flutter/material.dart';

import '../../../../core/ui/app_button.dart';
import '../../../../utils/constants.dart';

class ImageBottomSheet extends StatelessWidget {
  final String text1;
  final String icon1;
  final String icon2;
  final String text2;
  final String btnTxt;
  final Function? onTap1;
  final Function? onTap2;
  final String? text3;
  final String? icon3;
  const ImageBottomSheet(
      {super.key,
      required this.text1,
      required this.icon1,
      required this.icon2,
      required this.text2,
      required this.btnTxt,
      this.onTap1,
      this.onTap2,
      this.text3,
      this.icon3});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Constants.height20),
      height: text3 != null ? 300 : 170,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25), topLeft: Radius.circular(25)),
          color: Constants.bottom),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              //the onTap function that accept as argument
              onTap1!();
            },
            child: Row(
              children: [
                Image.asset(icon1),
                SizedBox(
                  width: Constants.height10,
                ),
                Text(text1),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              onTap2!();
            },
            child: Row(
              children: [
                Image.asset(icon2),
                SizedBox(
                  width: Constants.height10,
                ),
                Text(text2),
              ],
            ),
          ),
          text3 != null
              ? Row(
                  children: [
                    Image.asset(icon3!),
                    SizedBox(
                      width: Constants.height10,
                    ),
                    Text(text3!),
                  ],
                )
              : const SizedBox.shrink(),
          AppButton(text: btnTxt)
        ],
      ),
    );
    ;
  }

  static void showBottomSheet(BuildContext context, Widget Sheet) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Sheet;
        });
  }
}