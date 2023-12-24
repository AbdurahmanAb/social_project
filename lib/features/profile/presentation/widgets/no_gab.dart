import 'package:flutter/material.dart';
import 'package:kim/core/text/MidText.dart';

enum GabEnum{
  comment,
  gab,
  connection
}

class NoGab extends StatelessWidget {
  final Enum gab;
  const NoGab({super.key, required this.gab});

  @override
  Widget build(BuildContext context) {
    return gab == GabEnum.gab?  Center(
     child: MidText(text: "작성된 갭이 없습니다."),
    ):gab == GabEnum.comment? Center(
     child: MidText(text: "작성된 댓글이 없습니다.")):Center(
     child: MidText(text: "연결된 사용자가 없습니다.")) ;
  }
}