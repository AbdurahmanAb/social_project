import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kim/core/BottomBar.dart';
import 'package:kim/core/Hamburger.dart';
import 'package:kim/core/ui/Appbutton.dart';
import 'package:kim/core/top_buttons.dart';
import 'package:kim/core/topbar.dart';
import 'package:kim/features/explore/presentation/screen/tab_page_one.dart';
import 'package:kim/utils/constants.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void Open() {
    _scaffoldKey.currentState!.openDrawer();
  }

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
                  TopBar(Triger: Open),
                  TopButtons(),
                ],
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/Lounge/welcome.png",
                        height: 200,
                        width: 300,
                      ),
                      GestureDetector(
                          onTap: () {
                            Get.toNamed(
                              "/write",
                            );
                          },
                          child: AppButton(text: "갭 작성하기"))
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
