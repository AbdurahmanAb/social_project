import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/core/topbar.dart';
import 'package:kim/features/explore/presentation/screen/pageOne.dart';
import 'package:kim/features/explore/presentation/widgets/ImageCard.dart';
import 'package:kim/features/explore/presentation/widgets/feed_search.dart';
import 'package:kim/features/explore/presentation/widgets/top_cards.dart';
import 'package:kim/features/explore/presentation/widgets/vertical_card.dart';
import 'package:kim/utils/constants.dart';

class GabFeed extends StatefulWidget {
  const GabFeed({super.key});

  @override
  State<GabFeed> createState() => _GabFeedState();
}

class _GabFeedState extends State<GabFeed> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [TopBar(),
          FeedSearch(),
          TopCard(brand: "Lacoste", brandText: "@라코스테", text: "LACOSTE(라코스테)는 1920년대 프랑스의 테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다."),
          SizedBox(height: Constants.height10 /2,),
          VerticalCard(),
          SizedBox(height: Constants.height10 /2,),
          TopCard(brand: "POsta", brandText: "@posta", text: "LACOSTE(라코스테)는 1920년대 프랑스의 테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다."),
           SizedBox(height: Constants.height10 /2,),
           ImageCard(),

          
          
          ],
        )),
      ),
    );
  }
}
