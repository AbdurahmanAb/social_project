import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/core/ui/avatar.dart';
import 'package:kim/features/explore/presentation/widgets/ResultBtn.dart';
import 'package:kim/features/profile/presentation/widgets/row_data.dart';
import 'package:kim/utils/constants.dart';

class ConnectionHeader extends StatefulWidget {
  const ConnectionHeader({super.key});

  @override
  State<ConnectionHeader> createState() => _ConnectionHeaderState();
}

class _ConnectionHeaderState extends State<ConnectionHeader> {
  @override
  Widget build(BuildContext context) {


    return Container(
      child: Column(
        children: [
          Container(
            color: Constants.postColor,
            padding: EdgeInsets.symmetric(vertical:Constants.height15, horizontal: Constants.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(style: TextStyle(fontWeight: FontWeight.bold), "순위"),
                Text(style: TextStyle(fontWeight: FontWeight.bold), "대화명"),
                SizedBox(width:Constants.height10),
                Text(style: TextStyle(fontWeight: FontWeight.bold), "댓글"),
                Text(style: TextStyle(fontWeight: FontWeight.bold), "업보트"),
                Image.asset("assets/avatar/right_side.png")
              ],
            ),
          ),
RowData(Upvote: 1000, avatar: AvatarImg(height: 35,width: 30,),comment: 1000,isFollowed: true,nickname: "슝카_828hgh2",ranking: 1,),
RowData(Upvote: 1000, avatar: AvatarImg(height: 35,width: 30,),comment: 1000,isFollowed: false,nickname: "슝카_8282",ranking: 2,)
,  RowData(Upvote: 1000, avatar: AvatarImg(height: 35,width: 30,),comment: 1000,isFollowed: true,nickname: "슝카_8282",ranking: 3,)
 ,  RowData(Upvote: 1000, avatar: AvatarImg(height: 35,width: 30,),comment: 1000,isFollowed: false,nickname: "슝카_8282",ranking: 4,)
 ,  RowData(Upvote: 1000, avatar: AvatarImg(height: 35,width: 30,),comment: 1000,isFollowed: true,nickname: "슝카_8282",ranking: 5,)
 
         
        ],
      ),
    );
  }
}
