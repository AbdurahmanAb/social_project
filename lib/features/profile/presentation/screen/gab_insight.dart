import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/features/explore/presentation/widgets/brand.dart';
import 'package:kim/features/profile/presentation/widgets/insight_card.dart';
import 'package:kim/features/profile/presentation/widgets/profile_top_bar.dart';

import '../../../../utils/constants.dart';

class GabInsight extends StatelessWidget {
  final bool hasInsight;
  const GabInsight({this.hasInsight = true, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.lightblack,
      body: SafeArea(
          child: Column(
        children: [
          ProfileTopBar(text: "Gab Insight"),
          Container(
            padding: EdgeInsets.all(Constants.height15),
            margin: EdgeInsets.symmetric(
                vertical: Constants.height20 * 1.8,
                horizontal: Constants.height10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Constants.height20),
                border: Border.all(width: .51, color: Constants.chipColor)),
            child: Column(
              children: [
                Text(
                  "가치를 만물은 뭇 피고, 꽃이 품에 커다란 봄날의 보라. 곳이 뜨거운지라, 심장은 노년에게서 품고 피고, 교향악이다. 착목한는 많이 되는 그러므로 노래하며 피가 위한다.",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Constants.height20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Brand(
                      brand: "assets/avatar/goout-lg.png",
                      brandText: "@고아웃",
                      brandText2: "#캠핑",
                    ),
                    Text(
                      '24분 전',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Constants.mdFont,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          !hasInsight
              ? Text(
                  textAlign: TextAlign.center,
                  "아직 인사이트 데이터가 모이지 않았습니다. \n 사용자가 갭을 조회 또는 보팅등의 상호작용 후 \n  다시 확인 바랍니다.")
              : InsightsCard(icon: "assets/icons/icon_hits.png",title: "조회수",txtContent: "막대 그래프\nX축 : 6시간 단위\nY축 : 조회수의 단위에 따라 변동",)
        ],
      )),
    );
  }
}
