import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
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

  void initState() {
    super.initState();

    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constants.screen_width * .75,
      color: const Color.fromARGB(255, 15, 15, 15),
      child: Column(
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
                        Row(
                          children: [
                            Image.asset("assets/avatar/leauge.png"),
                            SizedBox(
                              width: Constants.height10,
                            ),
                            const Text("@EPL")
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: EdgeInsets.all(Constants.height20),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              '브랜드 라운지 채널',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Constants.height20,
                        ),
                        const Text(
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                            "자동으로 생성됩니다."),
                        const Text(
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                            "생성되지 않았네요."),
                        SizedBox(
                          height: Constants.height15,
                        ),
                        const Text(
                          '😥',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFFF0089),
                            fontSize: 34,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: Constants.height15,
                        ),
                        const Text(
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Constants.appColor),
                            "채널은 갭에서 언급량에 따라"),
                        const Text(
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Constants.appColor),
                            "자동으로 생성됩니다.")
                      ],
                    ),
                  ),
                ],
              ),
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
                          brand: "assets/avatar/goout.png",
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
                                    child: Image.asset("assets/avatar/goout.png")),
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
                                width: Constants.screen_width * 0.35,
                                height: 16,
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
                                      height: 16,
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
                                    height:Constants.height20,
                                    child: Image.asset(fit:BoxFit.fill,"assets/avatar/goout.png")),
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
                                height: 16,
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
                                      height: 16,
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
                                    child: Image.asset("assets/avatar/goout.png")),
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
                                height: 16,
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
                                      width: 30,
                                      height: 16,
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
    );
  }
}
