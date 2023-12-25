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
    "assets/avatar/HYPE.png",
    "assets/avatar/marvel_lg.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 8),
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
          SizedBox(
            height: 60,
          
            child: PageView.builder(
              padEnds: false,
              controller: pageController,
              scrollDirection: Axis.horizontal,
              itemCount: asset.length,
              itemBuilder: (context, index) {
                return Container(
                  
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9),
                    child: Image.asset(
                      asset[index],
               
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              },
            ),
          ),
          GabSearch(),
         LongPost(),
                LongPost(),
        ],
      ),
    );
  }
}
