import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kim/features/profile/presentation/widgets/gab_search.dart';

import '../../../../utils/constants.dart';
import '../../../Lounge_Feed/presentation/widgets/comment.dart';
import '../../../Lounge_Feed/presentation/widgets/long_post.dart';

class GabPage extends StatefulWidget {
  const GabPage({super.key});

  @override
  State<GabPage> createState() => _GabPageState();
}

class _GabPageState extends State<GabPage> {
  late final PageController pageController;

  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: .2);
  }

  List asset = [
    "assets/avatar/nike_lg.png",
    "assets/avatar/leauge_lg.png",
    "assets/avatar/marvel_lg.png",
    "assets/avatar/HYPE.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 8),
            child: Text(
              '최근 활동한 @브랜드 라운지',
              style: TextStyle(
                color: Constants.white,
                fontSize: Constants.smFont,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Divider(),
           Container(
                width:Constants.height15 *40 ,
                height: Constants.height10 * 5.5,
                padding: const EdgeInsets.only(top: 0, left: 16, bottom: 0),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: 10,),
                 scrollDirection: Axis.horizontal,
                 
                  itemBuilder:(context ,index) =>
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 80,
                                        height: Constants.height20*2.5,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(asset[index ]),
                                            fit: BoxFit.contain,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        
                        ],

                      ),
                    ),
                   
                  itemCount: asset.length,
                ),
           ),
    Divider(thickness: 3,color: Constants.black,),
          GabSearch(),
          LongPost(brandPost: true,hasTitle: false, img: "assets/avatar/post5.jpg"),
          LongPost(hasTitle: false,),
        ],
      ),
    );
  }
}
