import 'package:flutter/material.dart';
import 'package:kim/features/profile/presentation/widgets/no_follows.dart';
import 'package:kim/features/profile/presentation/widgets/profile_top_bar.dart';
import 'package:kim/utils/constants.dart';

class ProfileFollower extends StatefulWidget {
  
  const ProfileFollower({super.key, });

  @override
  State<ProfileFollower> createState() => _ProfileFollowerState();
}

class _ProfileFollowerState extends State<ProfileFollower> with TickerProviderStateMixin {
late TabController tabController;
final int follower =0;
  final int following =0;

void initState(){
  super.initState();
  tabController = TabController(length: 2, vsync: this);
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Constants.lightblack,
        child: Column(
          children: [ProfileTopBar(text: "빛나는_별다방"),
          SizedBox(
           height: Constants.height15*4,
            child: TabBar(
              indicatorColor: Constants.appColor,
            unselectedLabelColor: Constants.white,
            labelColor: Constants.appColor,
            indicatorSize: TabBarIndicatorSize.tab,
              controller: tabController,
              tabs: [
                Text("$follower  팔로워"),
                Text("$following  팔로잉")
              ]),
          ),
          SizedBox(height: Constants.height20 *2,),
          Expanded(child: TabBarView(controller: tabController, children: [
                 NoFollow(followerEnum:FollowerEnum.follower ),
                  NoFollow(followerEnum:FollowerEnum.following ),
          ]))
     
          ],
        ),
      )),
    );
  }
}
