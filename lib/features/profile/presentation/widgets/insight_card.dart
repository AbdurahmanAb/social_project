import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/core/text/HeaderText.dart';
import 'package:kim/core/text/MidText.dart';
import 'package:kim/utils/constants.dart';

class InsightsCard extends StatelessWidget {
  final String icon;
  final String title;
  final String txtContent;
  const InsightsCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.txtContent});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Constants.height15),
      margin: EdgeInsets.symmetric(
          vertical: Constants.height20 * 1.8, horizontal: Constants.height10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Constants.height15),
          color: Constants.postColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(icon),
              SizedBox(
                width: 2,
              ),
              Header(
                size: Constants.lgFont,
                text: title,
              )
            ],
          ),
          MidText(
            text: "48시간 동안",
          ),
          SizedBox(
            height: Constants.height10,
          ),
          InkWell(
            onTap: () {
              showDialog(
                  context: context, builder: (context) => DiloagContet());
            },
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                  vertical: Constants.height20 * 2,
                  horizontal: Constants.height20),
              decoration: BoxDecoration(
                  color: Constants.bottom,
                  border: Border.all(width: .51, color: Constants.chipColor),
                  borderRadius: BorderRadius.circular(Constants.height15)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(txtContent),
                  ]),
            ),
          ),
          SizedBox(
            height: Constants.height10,
          ),
          Text.rich(TextSpan(children: [
            TextSpan(text: "총 조회수  "),
            TextSpan(text: "421", style: TextStyle(color: Constants.appColor))
          ]))
        ],
      ),
    );
  }

  Widget DiloagContet() {
//   return AlertDialog(
//     insetPadding: EdgeInsets.all(15),
//     contentPadding: EdgeInsets.all(0),
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//     actionsAlignment:MainAxisAlignment.start,
//     title: Text("알 림"),
//     backgroundColor: Colors.black,
//     actions: [
// Text("data"),
// Divider()

//     ],);

    return Dialog(
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
              '알 림',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: Constants.lgFont,
        
                fontWeight: FontWeight.w700,
             
              ),
            ),
            Divider(),
            Text(
              '갭 인사이트는 포스팅 후 30일까지만 제공됩니다.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: Constants.mdFont,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
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
            )
          ],
        ),
      ),
    );
  }
}
