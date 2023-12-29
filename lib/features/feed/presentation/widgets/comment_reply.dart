import 'package:flutter/cupertino.dart';

class CommentReply extends StatelessWidget {
  const CommentReply({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Row(
          children: [
            Image.asset("assets/icons/icon_upvote.png"),
            Image.asset("assets/icons/icon_downvote.png"),
            Image.asset("assets/icons/icon_reply.png")
          ],
        )
      ],
    );
  }
}