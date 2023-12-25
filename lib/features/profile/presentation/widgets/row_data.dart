import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/features/explore/presentation/widgets/ResultBottom.dart';

import '../../../../core/ui/avatar.dart';
import '../../../../utils/constants.dart';
import '../../../explore/presentation/widgets/ResultBtn.dart';
class RowData extends StatelessWidget {
  final int ranking;
  final String nickname;
  final int comment;
  final int Upvote;
  final Widget avatar;
  final bool isFollowed;
  const RowData({super.key, required this.ranking, required this.nickname, required this.comment, required this.Upvote, required this.isFollowed, required this.avatar});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [          Container(
            padding: EdgeInsets.all(Constants.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              ranking == 1? Image.asset("assets/avatar/synbol.png", height: 15,) :Text(ranking.toString()),
                Row(
                  children: [
                    avatar,
                    SizedBox(width: 10,),
                    Text(nickname),
                  ],
                ),
                Text(comment.toString()),
                Text(Upvote.toString()),
                GestureDetector(
                  onTap: (){
                    ResultBottom.showResultBottom(context);
                  },
                  child: ResultBtn(disabled: !isFollowed))
              ],
            ),
          ),
          Divider(
            color: Constants.black,
            thickness: 1,
          )],
    );
  }
}