import 'package:flutter/cupertino.dart';
import 'package:kim/utils/constants.dart';

class EmojiPage extends StatelessWidget {
  const EmojiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(
height: Constants.screen_height *0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text("검색된 갭이 없습니다.", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
        Text("😂")],
      ),
    );
  }
}