import 'package:flutter/cupertino.dart';

import '../../../../utils/constants.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '빛나는_별다방',
                  style: TextStyle(
                    color: Constants.white,
                    fontSize: Constants.mdFont,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: '님의 ',
                  style: TextStyle(
                    color: Constants.white,
                    fontSize: Constants.mdFont,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: '브랜드 뱃지',
                  style: TextStyle(
                    color: Constants.appColor,
                    fontSize: Constants.mdFont,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: ' 획득 현황',
                  style: TextStyle(
                    color: Constants.white,
                    fontSize: Constants.smFont,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: Constants.height15,
        ),
        Text(
          '아직 완성된 브랜드가 없습니다.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Constants.white,
            fontSize: Constants.xsFont,
          ),
        ),
        SizedBox(
          height: Constants.height10 / 2,
        ),
        Text(
          '다양한 활동으로 브랜드 뱃지를 얻으세요.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Constants.white,
            fontSize: Constants.xsFont,
          ),
        ),
        SizedBox(
          height: Constants.height20 ,
        ),
        Container(
          width: Constants.screen_width * .26,
          padding: EdgeInsets.symmetric(
              vertical: Constants.height10 ,
              horizontal: Constants.height10),
          decoration: BoxDecoration(
            color: Constants.appColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "갭 작성",
              style: TextStyle(
                  color: Constants.black,
                  fontSize: Constants.xsFont,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: Row(
            children: [
              Text(
                '내 소개를 등록하세요.',
                style: TextStyle(
                  color: Constants.appColor,
                  fontSize: Constants.mdFont,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
