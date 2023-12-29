import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kim/utils/constants.dart';

import '../../../../core/report_bottom.dart';

class FeedTop extends StatelessWidget {
  const FeedTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.black,
      padding: EdgeInsets.symmetric(
          vertical: Constants.height20 + 5, horizontal: Constants.height10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(CupertinoIcons.back)),
          Row(
            children: [
              Image.asset("assets/Lounge/button_share.png"),
              SizedBox(
                width: Constants.height15,
              ),
              const Icon(CupertinoIcons.bell),
              SizedBox(
                width: Constants.height15,
              ),
              GestureDetector(
                  onTap: () {
                    ReportBottomSheet.showBottomSheet(context);
                  },
                  child: const Icon(Icons.more_horiz)),
              SizedBox(
                width: Constants.height15,
              ),
            ],
          )
        ],
      ),
    );
  }
}
