import 'package:flutter/cupertino.dart';
import 'package:kim/utils/constants.dart';

class CommentReply extends StatelessWidget {
  const CommentReply({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
    
      children: [
        Spacer(),
        Row(

          children: [
            Row(
           
              children: [
                Image.asset("assets/icons/icon_upvote.png"),
                SizedBox(width: Constants.height10,),
                Text("0"),
              ],
            ),
           SizedBox(width: Constants.height20,),
            Image.asset("assets/icons/icon_downvote.png"),
                    SizedBox(width: Constants.height20,),
            Image.asset("assets/icons/icon_reply.png"),
                    SizedBox(width: Constants.height10/2,)
           ,    Text("답변")
          ],
        )
      ],
    );
  }
}