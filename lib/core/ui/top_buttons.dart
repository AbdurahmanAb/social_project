import 'package:flutter/material.dart';
import 'package:kim/core/ui/app_button.dart';

import 'package:kim/core/share.dart';

import 'package:kim/core/text/HeaderText.dart';
import 'package:kim/utils/constants.dart';

class TopButtons extends StatelessWidget {
  final String text;
  TopButtons({this.text = "Lacstoe", super.key});

  @override
  Widget build(BuildContext context) {
    void _showBottomSheet(BuildContext context) {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.height15,  vertical: Constants.height20),
            height: Constants.screen_height * 0.25,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25)),
                color: Constants.bottom),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset("assets/avatar/lacoste.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    const Header(
                      text: "@라코스테",
                      size: 15,
                    )
                  ],
                ),
                SizedBox(height: Constants.height20,),
                Text(
                  "<GO OUT>은 경험하는 매거진을 주제로 한 아웃도어 라이프스타일 편집 잡지입니다. 시시각각 변화하는 아웃도어 트렌드와 최신 뉴스, 패션, 캠핑, 액티비티에 관한 정보를 함께 제공합니다.",
                  style: TextStyle(fontSize: Constants.smFont),
                ),
                  SizedBox(height: Constants.height15,),
                 AppButton(text: "닫기")
              ],
            ),
          );
        },
      );
    }

    return Container(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 10, bottom: 10),
      color: Constants.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                    onTap: () {
                      _showBottomSheet(context);
                    },
                    child: Image.asset(
                      "assets/Lounge/brand_badge.png",
                    )),
              ),
              const Header(
                text: "@라코스테",
                size: 15,
              )
            ],
          ),
          Row(
            children: [
              Image.asset("assets/Lounge/button_favorite.png"),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                  onTap: () {
                    Share.showBottomSheet(context);
                  },
                  child: Image.asset("assets/Lounge/button_share.png")),
            ],
          )
        ],
      ),
    );
  }
}
