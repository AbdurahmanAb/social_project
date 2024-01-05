import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/features/profile/presentation/widgets/brands_list.dart';

import '../../../../utils/constants.dart';

class ProfileBrandList extends StatelessWidget {
  final bool? isMine;
   ProfileBrandList({super.key, this.isMine=true});

  @override
  Widget build(BuildContext context) {
    return      Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Constants.height10 / 2,
                    horizontal: Constants.height10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BrandLlist(),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/avatar/goout-lg.png",
                              height: 27,
                            ),
                            SizedBox(
                              height: Constants.height10,
                            ),
                          isMine!?  Container(
                              height: 6,
                              width: 53,
                              decoration: BoxDecoration(
                                  //   color: Constants.bottom,
                                  borderRadius: BorderRadius.circular(15)),
                              child: FractionallySizedBox(
                                widthFactor: .4,
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  decoration: BoxDecoration(
                                      //  color: Constants.appColor,
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              )
                            ):SizedBox.shrink(),
                          ],
                        ),
                        SizedBox(
                          width: Constants.height10,
                        ),
                        Column(
                          children: [
                            Image.asset("assets/avatar/leauge.png"),
                            SizedBox(
                              height: Constants.height10 * .8,
                            ),
                           isMine!? Container(
                              height: 7,
                              width: 53,
                              decoration: BoxDecoration(
                                  color: Constants.bottom,
                                  borderRadius: BorderRadius.circular(15)),
                              child: FractionallySizedBox(
                                widthFactor: .8,
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Constants.appColor,
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                            ):SizedBox.shrink()
                          ],
                        ),
                        SizedBox(
                          width: Constants.height10,
                        ),
                        Column(
                          children: [
                            Image.asset("assets/avatar/nike.png"),
                            SizedBox(
                              height: Constants.height10 * .8,
                            ),
                          isMine!?  Container(
                              height: 7,
                              width: 53,
                              decoration: BoxDecoration(
                                  color: Constants.bottom,
                                  borderRadius: BorderRadius.circular(15)),
                              child: FractionallySizedBox(
                                widthFactor: .4,
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Constants.appColor,
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                            ):SizedBox.shrink()
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Constants.height20 * 1.8,
                    ),
                    Text(
                      '가치를 만물은 뭇 피고, 꽃이 품에 커다란 봄날의 보라. 곳이 뜨거운지라, 심장은 노년에게서 품고 피고, 교향악이다. 착목한는 많이 되는 그러므로 노래하며 피가 위한다.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Constants.smFont,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              );
  }
}