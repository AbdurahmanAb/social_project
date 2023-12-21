import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kim/utils/constants.dart';

class FeedSearch extends StatelessWidget {
  const FeedSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     
      width: double.maxFinite,
      color: Constants.black,
padding: EdgeInsets.all(Constants.height10),
      child: SizedBox(
        width: Constants.screen_width*0.8,
        height: 28,
        child: Stack(
          children: [
            TextField(
                    
              decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top:13, bottom: 25, right: 10, left: 10),
            
              hintStyle: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w200
              ),
                hintText: "위갭을 탐험하세요",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(14),
                ),
                filled: true,
                fillColor: Constants.bottom
              ),
            ),
            Positioned(
              right: 10,
              top: 3,
              child: Image.asset("assets/Lounge/icon_explore.png"))
          ],
        ),
      ),
    );
  }
}
