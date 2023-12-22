import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kim/features/explore/presentation/widgets/brand.dart';
import 'package:kim/utils/constants.dart';

class DetailBrand extends StatelessWidget {
  const DetailBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.Iconbg,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Constants.black,
              padding: EdgeInsets.all(Constants.height20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(CupertinoIcons.back)),
                    Text(" 새로 열린 브랜드 라운지"),
                    SizedBox()
                  ]),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(Constants.height20),
                  color: Constants.Iconbg,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Constants.bottom,
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.all(Constants.height20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Brand(
                                Height: 35,
                                brand: "assets/avatar/lacoste.png",
                                brandText: "@라코스테"),
                            SizedBox(
                              height: Constants.height10,
                            ),
                            Text(
                                "LACOSTE(라코스테)는 1920년대 프랑스의 테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다.")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Constants.height20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Constants.bottom,
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.all(Constants.height20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Brand(
                                Height: 35,
                                brand: "assets/avatar/leauge.png",
                                brandText: "@EPL"),
                            SizedBox(
                              height: Constants.height10,
                            ),
                            Text(
                                "영국 잉글랜드의 최상위 프로 축구 리그. 정식 명칭은 'Premier League'지만 약자로 'PL'보단 앞에 England 나 English의 E를 붙인 'EPL'이 많이 쓰인다.")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Constants.height20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Constants.bottom,
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.all(Constants.height20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Brand(
                                Height: 35,
                                brand: "assets/avatar/marvel.png",
                                brandText: "@마블"),
                            SizedBox(
                              height: Constants.height10,
                            ),
                            Text(
                                "마블 스튜디오에서 제작하는 슈퍼히어로물 프랜차이즈 세계관. Marvel Cinematic Universe (마블 시네마틱 유니버스) 앞자를 따서 MCU라고 부른다..")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Constants.height20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Constants.bottom,
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.all(Constants.height20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Brand(
                                Height: 35,
                                brand: "assets/avatar/HYPE.png",
                                brandText: "@하이브"),
                            SizedBox(
                              height: Constants.height10,
                            ),
                            Text(
                                "HYBE는 2005년 방시혁이 설립한 음악에 기반한 엔터테인먼트 라이프스타일 플랫폼 기업이다. 이전 사명은 Big Hit Entertainment 였으며[7], 2021년 3월 31일에 현재의 사명으로 변경했다.")
                          ],
                        ),
                      ),
                    ],
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
