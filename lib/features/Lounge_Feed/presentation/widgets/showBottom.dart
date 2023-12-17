import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/features/feed/presentation/widgets/Tags.dart';

import '../../../../core/button.dart';
import '../../../../utils/constants.dart';

class ShowBottom {
  static void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(Constants.height20),
          height: Constants.screen_height * 0.34,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25), topLeft: Radius.circular(25)),
              color: Constants.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("assets/Lounge/text_icon(1).png"),
                  SizedBox(
                    width: Constants.height10,
                  ),
                  const Text("최신순"),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Image.asset("assets/Lounge/text_icon.png"),
                    SizedBox(
                      width: Constants.height10,
                    ),
                    const Text("인기순"),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Tags(name: "이번 주", color: Constants.chipColor,),
                  Tags(name: "이번 달",color: Constants.chipColor,),
                  Tags(name: "올 해",color: Constants.chipColor,)
                ],
              ),
              Row(
                children: [
                  Image.asset("assets/Lounge/text_icon(2).png"),
                  SizedBox(
                    width: Constants.height10,
                  ),
                  const Text("갭스타"),
                ],
              ),
                const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Tags(name: "이번 주",color: Constants.chipColor,),
                  Tags(name: "이번 달",color: Constants.chipColor,),
                  Tags(name: "올 해",color: Constants.chipColor,)
                ],
              ),
              const AppButton(text: "닫기")
            ],
          ),
        );
      },
    );
  }
}
