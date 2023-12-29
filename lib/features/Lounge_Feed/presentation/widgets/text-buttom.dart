import 'package:flutter/material.dart';
import 'package:kim/features/Lounge_Feed/presentation/widgets/top_text.dart';
import 'package:kim/utils/constants.dart';

class TextButtons extends StatelessWidget {
  const TextButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.black,
      padding: EdgeInsets.only(bottom:5, left: 10),
      child: Row(
        children: [
          TopText(text: "#캠핑",),
          SizedBox(
            width: Constants.height10,
          ),
          TopText(text: "#하이킹"),
          SizedBox(
            width: Constants.height10,
          ),
          TopText(text: "#낚시")
        ],
      ),
    );
  }
}
