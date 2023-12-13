import 'package:flutter/material.dart';
import 'package:kim/utils/constsnts.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar( 
      backgroundColor: Constants.black,
        selectedItemColor: Constants.appColor,
        
        items: [
        BottomNavigationBarItem
        (
        
          icon: Image.asset("assets/Lounge/icon__lounge.png") ,label:"라운지" ),
           BottomNavigationBarItem( icon: Image.asset("assets/Lounge/button_gab_write.png") ,label: "" ),
        BottomNavigationBarItem(icon: Image.asset("assets/Lounge/icon_explore.png") ,label:"탐험", )
      ],);
  }
}