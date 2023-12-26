import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/features/explore/presentation/widgets/ResultBottom.dart';
import 'package:kim/features/profile/presentation/widgets/connection_bottom_sheet.dart';

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
    return Container(
          padding: EdgeInsets.all(Constants.height10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 10,
                child:   ranking == 1? Image.asset("assets/avatar/synbol.png",height: 20, ) :Text(ranking.toString(),),
              
              ),
          SizedBox(
                width: 140,
                child: Row(
                  children: [
                    avatar,
                    SizedBox(width: 10,),
                    Text(nickname),
                  ],
                ),
              ),  SizedBox(width:Constants.height10/2),
              Text(comment.toString()),
              Text(Upvote.toString()),
              GestureDetector(
                onTap: (){
     
     ConnectionBottomSheet.showConnectionBottomSheet(context);
     //                   ResultBottom.showResultBottom(context);
                },
                child: ResultBtn(disabled: !isFollowed))
            ],
          ),
        );
  }
}