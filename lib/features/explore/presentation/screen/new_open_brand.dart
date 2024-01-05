import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/features/explore/presentation/widgets/top_cards.dart';
import 'package:kim/features/feed/presentation/widgets/FeedTop.dart';
import 'package:kim/features/profile/data/brand_list.dart';
import 'package:kim/features/profile/presentation/widgets/profile_top_bar.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';
import '../widgets/brand.dart';

class NewOpenBrand extends StatelessWidget {
  const NewOpenBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.lightblack,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileTopBar(text: "새로 열린 브랜드 라운지"),
              SizedBox(
                height: Constants.height20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: SingleChildScrollView(
                    
                    child: ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(
                              height: Constants.height15,
                            ),
                        itemCount: 4,
                        shrinkWrap: true,
                    
                        itemBuilder: (context, i) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Constants.bottom),
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Brand(brand: BrandsList[i + 3                                                         ], brandText: "@라코스테"),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                    "LACOSTE(라코스테)는 1920년대 프랑스의 테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다.")
                              ],
                            ),
                          );
                        }),
                  ),            
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
