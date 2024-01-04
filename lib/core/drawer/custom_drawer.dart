import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/core/drawer/has%20_recent.dart%20_recent.dart';
import 'package:kim/core/drawer/has_no_recent.dart';
import 'package:kim/core/drawer/main_feed_hamburger_recent_visit_all_view.dart';
import 'package:kim/features/explore/presentation/widgets/brand.dart';
import 'package:kim/utils/constants.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer>
    with TickerProviderStateMixin {
  late TabController controller;
bool _showRecent = false;
  void initState() {
    super.initState();

    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: Constants.screen_width * .8,
        color: Constants.appBgColor, // const Color.fromARGB(255, 15, 15, 15),
        child:  _showRecent ?  VisitAllRecentView(): Column(
          children: [
      
        
            Container(
                margin: const EdgeInsets.only(top: 50),
                child: Image.asset("assets/avatar/LOGO.png")),
            SizedBox(
              height: Constants.height10,
            ),
            TabBar(
                controller: controller,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Constants.appColor,
                labelPadding: EdgeInsets.only(bottom: Constants.height20),
                tabs: [const Text("기 본"), const Text("즐겨찾기")]),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [Text("data"), Text("option 2")],
            // ), Divider(),
            Expanded(
              child: TabBarView(controller: controller, children: [
                InkWell(
                  overlayColor: MaterialStatePropertyAll(Colors.transparent),
                  onTap:(){
setState(() {
  _showRecent = true;
});
                  },
                  child: HasRecent()),
                //NoRecent(),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(Constants.height20),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '최근 방문 라운지',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '모두 보기',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: Constants.height20,
                          ),
                          const Brand(
                            brand: "assets/avatar/goout-lg.png",
                            brandText: "@고아웃",
                            brandText2: "#캠핑",
                          )
                        ],
                      ),
                    ),
                    const Divider(),
                    Padding(
                        padding: EdgeInsets.all(
                          Constants.height20,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '브랜드 라운지 채널',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Constants.height20,
                            ),
                            Row(
                              children: [
                                Text(
                                  '생성 예정인 서브 채널',
                                  style: TextStyle(
                                    color: Constants.appColor,
                                    fontSize: 14,
                                    fontFamily: 'KoPubDotum_Pro',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Constants.height20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                        height: Constants.height20,
                                        child: Image.asset(
                                            "assets/avatar/goout-lg.png")),
                                    SizedBox(
                                      width: Constants.height10,
                                    ),
                                    Text(
                                        style: TextStyle(
                                          color: Constants.appColor,
                                          fontSize: 12,
                                        ),
                                        "#페스티벌"),
                                  ],
                                ),
                                Container(
                                  width: Constants.screen_width * 0.3,
                                  height: 12,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF444446),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 62,
                                        height: 12,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: Constants.appColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: Constants.height20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                        height: Constants.height20,
                                        child: Image.asset(
                                            fit: BoxFit.fill,
                                            "assets/avatar/goout-lg.png")),
                                    SizedBox(
                                      width: Constants.height10,
                                    ),
                                    Text(
                                        style: TextStyle(
                                          color: Constants.appColor,
                                          fontSize: 12,
                                        ),
                                        "#하이킹"),
                                  ],
                                ),
                                Container(
                                  width: Constants.screen_width * 0.35,
                                  height: 12,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF444446),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 92,
                                        height: 12,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: Constants.appColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: Constants.height20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                        height: Constants.height20,
                                        child: Image.asset(
                                            "assets/avatar/goout-lg.png")),
                                    SizedBox(
                                      width: Constants.height10,
                                    ),
                                    Text(
                                        style: TextStyle(
                                          color: Constants.appColor,
                                          fontSize: 12,
                                        ),
                                        "#낚시"),
                                  ],
                                ),
                                Container(
                                  width: Constants.screen_width * 0.35,
                                  height: 12,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF444446),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: Constants.height10 * 2,
                                        height: 12,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: Constants.appColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: Constants.height20,
                            ),
                          ],
                        ))
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
