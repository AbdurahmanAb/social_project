import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/core/BottomBar.dart';
import 'package:kim/features/explore/presentation/screen/result_page.dart';
import 'package:kim/features/explore/presentation/widgets/feed_search.dart';
import 'package:kim/features/explore/presentation/widgets/search_cards.dart';
import 'package:kim/features/explore/presentation/widgets/search_menu.dart';
import 'package:kim/utils/constants.dart';

class ExploreSearch extends StatefulWidget {
  const ExploreSearch({super.key});

  @override
  State<ExploreSearch> createState() => _ExploreSearchState();
}

class _ExploreSearchState extends State<ExploreSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.Iconbg,
        body: SingleChildScrollView(
            child: SafeArea(
                child: Column(
      children: [
        Container(
          color: Constants.black,
          padding: EdgeInsets.only(left: 10, top: 20, bottom: 20, right: 10),
          child: Row(
            children: [
              Icon(CupertinoIcons.back),
              SizedBox(
                width: Constants.height10,
              ),
              SizedBox(
                width: Constants.screen_width * 0.8,
                height: 35,
                child: Stack(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              top: 12, bottom: 25, right: 10, left: 40),
                          hintStyle: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w200),
                          hintText: "위갭을 탐험하세요",
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          filled: true,
                          fillColor: Constants.bottom),
                    ),
                    Positioned(
                        left: 10,
                        bottom: 6.5,
                        child: Image.asset(
                          "assets/Lounge/icon_explore.png",
                          height: 19,
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      
       SearchMenu(),
       ResultPage()
        
      ],
    )))
    ,
    bottomNavigationBar: BottomBar(),);
  }
}
