

import 'package:flutter/material.dart';

import 'package:kim/core/share.dart';

import 'package:kim/core/HeaderText.dart';
import 'package:kim/utils/constsnts.dart';

class TopButtons extends StatelessWidget {
  final String text;
  TopButtons({this.text = "Lacstoe", super.key});

 

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 10, bottom: 10),
      color: Constants.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 10),

                // child: Image.asset("assets/Lounge/brand_badge.png",)

                child: GestureDetector(
                  onTap: (){
                    
                  },
                  child: Chip(
                      padding: const EdgeInsets.all(5),
                      backgroundColor: Constants.white,
                      label: Text(
                        text,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w900),
                      )),
                ),
              ),
              const Header(
                text: "@라코스테",
                size: 15,
              )
            ],
          ),
          Row(
            children: [
              Image.asset("assets/Lounge/button_favorite.png"),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                  onTap: () {
                   Share.showBottomSheet(context);
                    print("tabedddddddddd");
                  },
                  child: Image.asset("assets/Lounge/button_share.png")),
              
            ],
          )
        ],
      ),
    );
  }
}
