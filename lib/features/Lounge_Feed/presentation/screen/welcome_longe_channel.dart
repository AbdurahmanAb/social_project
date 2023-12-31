import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kim/core/drawer/custom_drawer.dart';
import 'package:kim/core/topbar.dart';

import '../../../../core/bottom_bar.dart';
import '../../../../core/ui/app_button.dart';
import '../../../../core/ui/top_buttons.dart';
import '../../../../utils/constants.dart';

class WelcomeLoungeChannel extends StatefulWidget {
  const WelcomeLoungeChannel({super.key});

  @override
  State<WelcomeLoungeChannel> createState() => _WelcomeLoungeChannelState();
}

class _WelcomeLoungeChannelState extends State<WelcomeLoungeChannel> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Constants.mainColor,
        body: SafeArea(
          child: Column(
            children: [
              Column(
                children: [
                  TopBar(Triger: () => _scaffoldKey.currentState!.openDrawer()),
                  TopButtons(),
                ],
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/Lounge/welcome2.png",
                        height: 190,
                        width: 301,
                      ),
                      SizedBox(height: Constants.height20*1.8,),
                      GestureDetector(
                          onTap: () {
                            Get.toNamed(
                              "/write",
                            );
                          },
                          child: Container(
                            width: Constants.screen_width - 30,
                            height: Constants.height20 * 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Constants.appColor),
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 40, right: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/Lounge/image_gab.png")
                                ,
                                SizedBox(width: Constants.height10/2,),
                                
                                Text(
                                  "갭 작성하기",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: CustomDrawer(),
        bottomNavigationBar: BottomBar());
  }
}
