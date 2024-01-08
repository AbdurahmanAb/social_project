import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kim/utils/constants.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  void handleTap(i) {
    switch (i) {
      case 0:
        Get.toNamed("/main");
        break;
      case 1:
         Get.toNamed("/write");
        break;
      case 2:
        Get.toNamed("/explore");
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        handleTap(index);
      },
    
      backgroundColor: Constants.black,
      selectedItemColor: Constants.appColor,
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.transparent,
            icon: Image.asset("assets/Lounge/icon__lounge.png"), label: "라운지"),
        BottomNavigationBarItem(
            icon: Image.asset("assets/Lounge/button_gab_write.png"), label: ""),
        BottomNavigationBarItem(
          icon: Image.asset("assets/Lounge/icon_explore.png"),
          label: "탐험",
        )
      ],
    );
  }
}
