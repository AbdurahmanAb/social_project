import 'package:flutter/cupertino.dart';
import 'package:kim/utils/constants.dart';

enum alignment{
  row,column
}

class SocialRow extends StatelessWidget {
  final Widget content1;
  final Widget content2;
  final double? gap;

  const SocialRow(
      {required this.content1, required this.content2, super.key, this.gap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        content1,
        SizedBox(
          width: gap != null ? gap : Constants.height10,
        ),
        content2
      ],
    );
  }
}

class SocialWidget extends StatelessWidget {
  const SocialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SocialRow(
            content1: Image.asset("assets/icons/icon_instagram.png"),
            content2: Text(
              "계정 등록",
              style: TextStyle(fontSize: Constants.smFont),
            )),
        SocialRow(
            content1: Image.asset("assets/icons/icon_twitter.png"),
            content2: Text(
              "계정 등록",
              style: TextStyle(fontSize: Constants.smFont),
            )),
        SocialRow(
            content1: Image.asset("assets/icons/icon_youtube.png"),
            content2: Text(
              "계정 등록",
              style: TextStyle(fontSize: Constants.smFont),
            ))
      ],
    );
  }
}
