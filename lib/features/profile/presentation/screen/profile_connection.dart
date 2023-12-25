import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kim/features/profile/presentation/widgets/connection_header.dart';
import 'package:kim/features/profile/presentation/widgets/profile_top_bar.dart';
import 'package:kim/features/profile/presentation/widgets/row_data.dart';

import '../../../../core/text/MidText.dart';
import '../../../../core/ui/avatar.dart';
import '../../../../utils/constants.dart';

class ProfileConncetion extends StatelessWidget {
  const ProfileConncetion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.Iconbg,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
             Padding(
               padding: EdgeInsets.all(Constants.height15),
               child:  Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                           GestureDetector(
                            onTap: (){
                              Get.back();
                            },
                            child: Icon(CupertinoIcons.back)),
                         Row(
                           children: [
               
                const Text( "이번주",style: TextStyle(fontWeight: FontWeight.w700,),),
                Icon(Icons.arrow_drop_down),
                MidText(text: "의 나와의 관계"),
              
                           ],
                         ),
                         SizedBox.shrink()
                       ],
                     ),
             ),
              ConnectionHeader(),
              RowData(
                Upvote: 1000,
                avatar: AvatarImg(
                  height: 35,
                  width: 30,
                ),
                comment: 1000,
                isFollowed: true,
                nickname: "슝카_828hgh2",
                ranking: 2,
              ),
              RowData(
                Upvote: 1000,
                avatar: AvatarImg(
                  height: 35,
                  width: 30,
                ),
                comment: 1000,
                isFollowed: false,
                nickname: "슝카_8282",
                ranking: 2,
              ),
              RowData(
                Upvote: 1000,
                avatar: AvatarImg(
                  height: 35,
                  width: 30,
                ),
                comment: 1000,
                isFollowed: true,
                nickname: "슝카_8282",
                ranking: 3,
              ),
              RowData(
                Upvote: 1000,
                avatar: AvatarImg(
                  height: 35,
                  width: 30,
                ),
                comment: 1000,
                isFollowed: false,
                nickname: "슝카_8282",
                ranking: 4,
              ),
              RowData(
                Upvote: 1000,
                avatar: AvatarImg(
                  height: 35,
                  width: 30,
                ),
                comment: 1000,
                isFollowed: true,
                nickname: "슝카_8282",
                ranking: 5,
              ),
              RowData(
                Upvote: 1000,
                avatar: AvatarImg(
                  height: 35,
                  width: 30,
                ),
                comment: 1000,
                isFollowed: true,
                nickname: "슝카_828hgh2",
                ranking: 2,
              ),
              RowData(
                Upvote: 1000,
                avatar: AvatarImg(
                  height: 35,
                  width: 30,
                ),
                comment: 1000,
                isFollowed: false,
                nickname: "슝카_8282",
                ranking: 2,
              ),
              RowData(
                Upvote: 1000,
                avatar: AvatarImg(
                  height: 35,
                  width: 30,
                ),
                comment: 1000,
                isFollowed: true,
                nickname: "슝카_8282",
                ranking: 3,
              ),
              RowData(
                Upvote: 1000,
                avatar: AvatarImg(
                  height: 35,
                  width: 30,
                ),
                comment: 1000,
                isFollowed: false,
                nickname: "슝카_8282",
                ranking: 4,
              ),
              RowData(
                Upvote: 1000,
                avatar: AvatarImg(
                  height: 35,
                  width: 30,
                ),
                comment: 1000,
                isFollowed: true,
                nickname: "슝카_8282",
                ranking: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
