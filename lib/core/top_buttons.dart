

import 'package:flutter/material.dart';
import 'package:kim/core/button.dart';

import 'package:kim/core/share.dart';

import 'package:kim/core/HeaderText.dart';
import 'package:kim/utils/constsnts.dart';

class TopButtons extends StatelessWidget {
  final String text;
  TopButtons({this.text = "Lacstoe", super.key});

 

  @override
  Widget build(BuildContext context) {
   void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.symmetric(vertical:Constants.height10,horizontal: Constants.height10),
       
          height: Constants.screen_height*0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight:Radius.circular(25), topLeft: Radius.circular(25) )
       ,  color: Constants.bottom
          ),
          child: Column(
mainAxisAlignment: MainAxisAlignment.spaceAround,
       crossAxisAlignment: CrossAxisAlignment.start,

            children: [
               Row(
                 children: [
                   Chip(
                          padding: const EdgeInsets.all(5),
                          backgroundColor: Constants.white,
                          label: Text(
                            text,
                            style: const TextStyle(
                                color: Colors.black, fontWeight: FontWeight.w900),
                          )),    SizedBox(width: 10,),
                            const Header(
                text: "@라코스테",
                size: 15,
              )
                 ],
               ),
              Text("<GO OUT>은 경험하는 매거진을 주제로 한 아웃도어 라이프스타일 편집 잡지입니다. 시시각각 변화하는 아웃도어 트렌드와 최신 뉴스, 패션, 캠핑, 액티비티에 관한 정보를 함께 제공합니다."),
              
           AppButton(text: "닫기")
            ],
          ),
        );
      },
    );
  }
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
                    _showBottomSheet(context);
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
