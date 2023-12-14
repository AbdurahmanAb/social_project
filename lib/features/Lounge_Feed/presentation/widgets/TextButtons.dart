import 'package:flutter/material.dart';
import 'package:kim/features/Lounge_Feed/presentation/widgets/TopText.dart';
import 'package:kim/utils/constsnts.dart';

class TextButtons extends StatelessWidget {
  const TextButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Constants.black,
      padding: EdgeInsets.only(bottom:Constants.height10, left: 5),
      child: Row(
        children: [
          TopText(text: "#캠핑"),
          SizedBox(width: Constants.height10,),
          TopText(text: "#하이킹"),
           SizedBox(width: Constants.height10,),
          TopText(text: "#낚시")
        ],
      ),
    );
  }
}