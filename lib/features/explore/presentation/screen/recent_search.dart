import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/features/explore/presentation/widgets/vertical_card.dart';

import '../../../../utils/constants.dart';
import '../widgets/brand.dart';

class RecentPage extends StatefulWidget {
  const RecentPage({super.key});

  @override
  State<RecentPage> createState() => _RecentPageState();
}

class _RecentPageState extends State<RecentPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
        
          child: Column(
            children: [
              Padding(

                   padding: EdgeInsets.symmetric(horizontal:  Constants.height10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "최근 검색어",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "전체 삭제",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
               Padding(
                   padding: EdgeInsets.symmetric(horizontal:  Constants.height10, vertical: 5),
                 child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("라코스테"), Icon(Icons.close)]),
               ),
             
             
                Divider(
                
                color: Constants.black,
                height: Constants.height10,
              ),
              Padding(
                padding:  EdgeInsets.only(left:Constants.height15, right: Constants.height15,top: 5, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("오늘의"),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset("assets/avatar/gab.png")
                      ],
                    ),
                    Icon(CupertinoIcons.forward)
                  ],
                ),
              ),
           
             
            SizedBox(height: Constants.height15,),
            
              Container(
                 padding:  EdgeInsets.only(left
                 :Constants.height15, right: Constants.height15, bottom: Constants.height15, top: 0),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "LACOSTE(라코스테)는 1920년대 프랑스의 테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다.테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다.",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: Constants.height10,
                    ),
                    Row(
                      children: [
                        Brand(
                          Height: 30,
                          brand: "assets/avatar/apple.png",
                          brandText: "@라코스테",
                          brandText2: "#테니스 ",
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Constants.black,
          height: 5,
        ),
        Container(
          padding: EdgeInsets.all(Constants.height15),
          child: Column(
            children: [
              SizedBox(
                height: Constants.height10,
              ),
              Container(
                // padding: const EdgeInsets.all(25),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "LACOSTE(라코스테)는 1920년대 프랑스의 테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다.테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다.",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: Constants.height10,
                    ),
                    Row(
                      children: [
                        Brand(
                          Height: 30,
                          brand: "assets/avatar/lacoste.png",
                          brandText: "@라코스테",
                          brandText2: "#테니스 ",
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Constants.black,
          height: 5,
        ),
        Container(
          padding: EdgeInsets.all(Constants.height15),
          child: Column(
            children: [
              SizedBox(
                height: Constants.height10,
              ),
              Container(
                // padding: const EdgeInsets.all(25),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "LACOSTE(라코스테)는 1920년대 프랑스의 테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다.테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다.",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: Constants.height10,
                    ),
                    Row(
                      children: [
                        Brand(
                          Height: 30,
                          brand: "assets/avatar/supreme.png",
                          brandText: "@라코스테",
                          brandText2: "#테니스 ",
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
