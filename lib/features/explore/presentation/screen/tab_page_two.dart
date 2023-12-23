import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/core/ui/avatar.dart';
import 'package:kim/features/explore/presentation/widgets/brand.dart';
import 'package:kim/utils/constants.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Constants.height20),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Brand(
                  brand: "assets/avatar/nike.png",
                  brandText: "@나이키",
                  brandText2: "#조던"),
              SizedBox(
                height: Constants.height10,
              ),
              const Text("작성자 : staedtler_77 / 26분 전"),
              SizedBox(
                height: Constants.height10,
              ),
              const Text(
                  "그라플렉스는 운동화를 나이키만 신을 정도로 좋아하는 덕후입니다. 그의 작업실 한편에는 나이키 신발 상자가 쌓여있는데요. 나이키 신발을 신지 않고 보관하는 용도로만 150켤레 넘게 소장하고 있죠.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(
                height: Constants.height10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Constants.bottom,
                    borderRadius: BorderRadius.circular(11)),
                padding: EdgeInsets.all(Constants.height20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        AvatarImg(
                          Enableborder: false,
                          height: 30,
                        ),
                        SizedBox(
                          width: Constants.height10,
                        ),
                        Text("ek_tompork "),
                        SizedBox(
                          width: Constants.height10,
                        ),
                        Text("/ 5분 전")
                      ],
                    ),
                    SizedBox(
                      height: Constants.height10,
                    ),
                    Text("나이키는 에어조던이지! GOAT! 르브론은 깜이 안됨"),
                     SizedBox(
                height: Constants.height10,
              ),
                    Row(
                      children: [
                        Text("8 업보트"),
                        SizedBox(
                          width: Constants.height20,
                        ),
                        Text("8 댓글")
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Constants.height10,
              ),
              Row(
                children: [
                  Text("12 업보트"),
                  SizedBox(
                    width: Constants.height20,
                  ),
                  Text("24 댓글")
                ],
              ),
              
            ],
          ),
    
       
        ],
      ),
    );
  }
}
