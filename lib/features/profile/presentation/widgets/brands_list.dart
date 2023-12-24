import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';

class BrandLlist extends StatelessWidget {
  const BrandLlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text.rich(
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
          
          Icon(CupertinoIcons.forward, size: Constants.height10 * 1.8,)
          ],
        ), SizedBox(height: Constants.height10 -5,),
      
      ],
    );
  }
}