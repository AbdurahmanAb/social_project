import 'package:flutter/cupertino.dart';
import 'package:kim/utils/constants.dart';

class TopCard extends StatelessWidget {
  const TopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
       color: Constants.mainColor,
       padding: EdgeInsets.all(Constants.height10),
       child: Column(
         children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("새로 열린 브랜드 라운지"),
              Icon(CupertinoIcons.forward)
            ],
          ),
           Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Constants.bottom
            ),
           ),
         ],
       ),
    );
  }
}