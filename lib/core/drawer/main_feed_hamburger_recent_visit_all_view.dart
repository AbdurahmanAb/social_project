import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kim/features/explore/presentation/widgets/brand.dart';
import 'package:kim/features/profile/presentation/widgets/profile_top_bar.dart';
import 'package:kim/utils/constants.dart';

class VisitAllRecentView extends StatelessWidget {
  const VisitAllRecentView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> assets = [
      "assets/avatar/lacoste.png",
      "assets/avatar/lacoste.png",
      "assets/avatar/lacoste.png",
      "assets/avatar/leauge.png",
      "assets/avatar/leauge.png",
      "assets/avatar/HYPE.png",
      "assets/avatar/HYPE.png"
    ];

    // ignore: avoid_unnecessary_containers
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(Constants.height15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(Icons.arrow_back_ios)),
              Text(
                '최근 방문 라운지',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'KoPubDotum_Pro',
                  fontWeight: FontWeight.w700,
                  height: 0.08,
                ),
              ),
              Text(
                '모두 지우기',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFAEAEB2),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: Constants.height20 ,
        ),
        ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Brand(
                      brand: assets[index],
                      brandText: "@라코스테",
                      brandText2: "#테니스",
                    ),
                    Icon(Icons.close)
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: assets.length),
      ],
    );
  }
}
