import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kim/features/explore/presentation/widgets/brand.dart';

import '../../utils/constants.dart';

class HasRecent extends StatefulWidget {
  const HasRecent({super.key});

  @override
  State<HasRecent> createState() => _HasRecentState();
}

class _HasRecentState extends State<HasRecent> {
 bool show = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
                Brand(
                  brand: "assets/avatar/goout-lg.png",
                  brandText: "@고아웃",
                  brandText2: "#캠핑",
                ),
                SizedBox(
                  height: Constants.height20,
                ),
                Brand(
                  brand: "assets/avatar/leauge_lg.png",
                  brandText: "@EPL",
                  brandText2: "#토트넘",
                ),
                SizedBox(
                  height: Constants.height20,
                ),
                Brand(
                  brand: "assets/avatar/leauge_lg.png",
                  brandText: "@EPL",
                  brandText2: "#아스널",
                )
                // Row(
                //   children: [
                //     Image.asset("assets/avatar/leauge.png"),
                //     SizedBox(
                //       width: Constants.height10,
                //     ),
                //     const Text("@EPL")
                //   ],
                // ),
              ],
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {
             setState(() {
                show = true;
             });
             
            },
            child: Padding(
              padding: EdgeInsets.all(Constants.height10),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        '브랜드 라운지 채널',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Constants.height10,
                  ),
                  Row(
                    children: [
                      Text(
                        '생성 예정인 서브 채널',
                        style: TextStyle(
                          color: Constants.appColor,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Constants.height20,
                  ),

            show?       InkWell(
              onTap: (){
                Get.toNamed("/welcomeLounge");
              },
              child: Column(
                children: [
                  Brand(
                            brand: "assets/avatar/goout-lg.png",
                            brandText: "@고아웃", brandText2: "#캠핑",),
                             SizedBox(
                      height: Constants.height10 ,
                    ),
                    Divider(
                      thickness: .51,
                      color: Constants.chipColor,
                    ),
                    Row(
                      children: [
                        Text(
                          '생성 예정인 서브 채널',
                          style: TextStyle(
                            color: Constants.appColor,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Constants.height20,
                    ),
                ],
              ),
            ):SizedBox.shrink(),
                 
                  SingleChildScrollView(
                      child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) =>
                        Padding(padding: EdgeInsets.all(8)),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Row(
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
                                    fontSize: 10,
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
                                  width: (index + 1) * 40,
                                  height: 12,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: Constants.appColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  )),
SizedBox(height: Constants.height10,),
Divider()
                  // const Text(
                  //     style: const TextStyle(
                  //       fontSize: 16,
                  //       fontWeight: FontWeight.w700,
                  //     ),
                  //     "자동으로 생성됩니다."),
                  // const Text(
                  //     style: TextStyle(
                  //       fontSize: 16,
                  //       fontWeight: FontWeight.w700,
                  //     ),
                  //     "생성되지 않았네요."),
                  // SizedBox(
                  //   height: Constants.height15,
                  // ),
                  // const Text(
                  //   '😥',
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(

                  //     fontSize: 34,

                  //     fontWeight: FontWeight.w700,

                  //   ),
                  // ),
                  // SizedBox(
                  //   height: Constants.height15,
                  // ),
                  // const Text(
                  //     style: TextStyle(
                  //         fontSize: 14,
                  //         fontWeight: FontWeight.w500,
                  //         color: Constants.appColor),
                  //     "채널은 갭에서 언급량에 따라"),
                  // const Text(
                  //     style: TextStyle(
                  //         fontSize: 14,
                  //         fontWeight: FontWeight.w500,
                  //         color: Constants.appColor),
                  //     "자동으로 생성됩니다.")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
