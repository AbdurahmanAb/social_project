import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
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
      width: Constants.screen_width * .8,
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
                        Row(
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
                        Text(
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                            "자동으로 생성됩니다."),
                        Text(
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                            "생성되지 않았네요."),
                        SizedBox(
                          height: Constants.height15,
                        ),
                        Text(
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
                        Text(
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Constants.appColor),
                            "채널은 갭에서 언급량에 따라"),
                        Text(
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
              const Text("data")
            ]),
          )
        ],
      ),
    );
  }
}
