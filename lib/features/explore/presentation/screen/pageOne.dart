import 'package:flutter/cupertino.dart';

import '../../../../utils/constants.dart';
import '../widgets/search_cards.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          SizedBox(
          height: Constants.height10,
        ),
      


        SearchCards(
          
            text: "LACOSTE(라코스테)는 1920년대 프랑스의 테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다.테니스 스타인 장 ",
            bottomtxt1: "12 업보트",
            bottomtxt2: "24 댓글,",
            date: "작성자 : staedtler_77 / 26분 전",
            imageUrl: "j"),
                    SizedBox(height: Constants.height10,),
              SearchCards(
            text: "LACOSTE(라코스테)는 1920년대 프랑스의 테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다.테니스 스타인 장 ",
            bottomtxt1: "12 업보트",
            bottomtxt2: "24 댓글,",
            date: "작성자 : staedtler_77 / 26분 전",
            )
      ],
    );
  }
}