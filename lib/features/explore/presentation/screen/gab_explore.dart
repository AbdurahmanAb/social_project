import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kim/core/drawer/custom_drawer.dart';
import 'package:kim/core/topbar.dart';
import 'package:kim/features/explore/presentation/screen/tab_page_one.dart';
import 'package:kim/features/explore/presentation/widgets/ImageCard.dart';
import 'package:kim/features/explore/presentation/widgets/feed_search.dart';
import 'package:kim/features/explore/presentation/widgets/top_cards.dart';
import 'package:kim/features/explore/presentation/widgets/vertical_card.dart';
import 'package:kim/utils/constants.dart';

class GabFeed extends StatefulWidget {
  const GabFeed({super.key});

  @override
  State<GabFeed> createState() => _GabFeedState();
}

class _GabFeedState extends State<GabFeed> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> asset = [
    "assets/avatar/avatar.jpg",
    "assets/avatar/avatar2.jpg",
    "assets/avatar/avatar5.jpg",
    "assets/avatar/avatar4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const CustomDrawer(),
      backgroundColor: Constants.mainColor,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            TopBar(Triger: () {
              _scaffoldKey.currentState!.openDrawer();
            }),
             FeedSearch(onTab: ()=>Get.toNamed("/recentsearch")),
            Container(
              padding: const EdgeInsets.all(10),
              color: Constants.lightblack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    " 새로 열린 브랜드 라운지",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                      onTap: () {
                        Get.toNamed("/newbrand");
                      },
                      child: const Icon(
                        CupertinoIcons.forward,
                      ))
                ],
              ),
            ),
            const TopCard(
                brand: "assets/avatar/lacoste.png",
                brandText: "@라코스테",
                text:
                    "LACOSTE(라코스테)는 1920년대 프랑스의 테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다."),
            const Divider(
              thickness: 5,
              color: Constants.black,
            ),
            Container(
              color: Constants.Iconbg,
              padding: const EdgeInsets.only(bottom: 20),
              //   height: Constants.screen_height * .85,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed("friendmore", arguments: asset);
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("친구의 Gab"),
                          Icon(CupertinoIcons.forward),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                      
                          return VerticalCard(
                            imgUrl: asset[index],
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                              height: 5,
                            ),
                        itemCount: asset.length),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 5,
              color: Constants.black,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              color: Constants.lightblack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "🔥 새로 열린 브랜드 라운지",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.toNamed("/newbrand");
                      },
                      child: const Icon(CupertinoIcons.forward))
                ],
              ),
            ),
            const TopCard(
                brand: "assets/avatar/nike.png",
                brandText: "@posta",
                text:
                    "LACOSTE(라코스테)는 1920년대 프랑스의 테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다."),
            SizedBox(
              height: Constants.height10 / 2,
            ),
            const Divider(
              thickness: 5,
              color: Constants.black,
            ),
            const ImageCard(),
            new DotsIndicator(
              dotsCount: 4,
              decorator: const DotsDecorator(activeColor: Constants.appColor),
            ),
            const Divider(
              thickness: 5,
              color: Constants.black,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              color: Constants.lightblack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "🔥 새로 열린 브랜드 라운지",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.toNamed("/newbrand");
                      },
                      child: const Icon(CupertinoIcons.forward))
                ],
              ),
            ),
            const TopCard(
                brand: "assets/avatar/lacoste.png",
                brandText: "",
                text:
                    "LACOSTE(라코스테)는 1920년대 프랑스의 테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다.")
          ],
        )),
      ),
    );
  }
}
