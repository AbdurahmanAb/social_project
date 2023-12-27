import "package:flutter/material.dart";
import "package:kim/features/profile/presentation/widgets/profile_top_bar.dart";
import "package:kim/utils/constants.dart";

class ProfileBadge extends StatelessWidget {
  const ProfileBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor:      Constants.lightblack,
        body: SafeArea(
          child: Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ProfileTopBar(
                text: "",
                textSpan: Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "빛나는_별다방님의",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                      text: "브랜드 뱃지",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Constants.appColor))
                ])),
              ),
          
              Padding(
                padding:  EdgeInsets.only(top: Constants.height20, right: Constants.height10, left: Constants.height10),
                child: Text("브랜드 뱃지 ",
                    style: TextStyle(
                      color: Color(0xFFDBFF00),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    )),
              ),
                  Divider(thickness: .21,color: Constants.chipColor,),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(top:8.0, left: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("고아웃"),
                    Text("슈프림"),
                    Text("하이브"),
                  ],
                ),
              ),
              SizedBox(
                height: Constants.height10/2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:5, horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("GO OUT"),
                    Text("SUPREME"),
                    Text("HYBE"),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    
                      width: Constants.screen_width/3.2,
                      height: 42,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/avatar/goout-lg.png"),
                          fit: BoxFit.contain,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      )),
                                              Container(
                      width: Constants.screen_width/3.2,
                      height: 45,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/avatar/preme.png"),
                          fit: BoxFit.contain,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      )),
                                              Container(
                      width: Constants.screen_width/3.2,
                      height: 45,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/avatar/HYPE.png"),
                          fit: BoxFit.contain,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      )),
                ],
              ),
              SizedBox(height: Constants.height20,),
              Divider(color: Constants.black,thickness: 4,),
              SizedBox(
                height: Constants.height10,
              ),     Padding(
                padding: const EdgeInsets.only(top:8.0, left: 8.0,right: 8.0),
                child: Text("생성 예정인 브랜드 뱃지 "),
              ),
              
              Divider(thickness: .2,color: Constants.chipColor,), Padding(
                padding:  EdgeInsets.only(top:Constants.height15,right: Constants.height15,left: Constants.height15,bottom: Constants.height10),
                child: SizedBox(
                  width: Constants.screen_width/2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                  
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("프리미어리그 "),
            
                        Text("나이키")
                      ],
                     ),Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Premier League "),
                    
                        Text("NIKE")
                      ],
                     ),
                    
                    ],
                  ),
                ),
              ), Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Row(children: [
                           Container(
                        width: Constants.screen_width/3.2,
                        height: 45,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/avatar/leauge.png"),
                            fit: BoxFit.contain,
                            colorFilter: ColorFilter.mode(Constants.black.withOpacity(.5), BlendMode.dstATop)
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        )),   Container(
                        width: Constants.screen_width/3.2,
                        height: 45,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          
                          image: DecorationImage(
                            image: AssetImage(
                            
                                "assets/avatar/nike.png"),
                            fit: BoxFit.contain,  colorFilter: ColorFilter.mode(Constants.black.withOpacity(.5), BlendMode.dstATop)
                      
                           // colorFilter: ColorFilter.mode(Constants.black);
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        )),
                       ],),
              )
               
            ]),
          ),
        ));
  }
}
