import 'package:flutter/material.dart';
import 'package:kim/core/ui/avatar.dart';
import 'package:kim/features/explore/presentation/screen/result_page.dart';
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
  int selectedIndex =0;

void initState(){
  super.initState();
  tabController = TabController(length: 2, vsync: this);
  tabController.addListener(() {
    setState(() {
      selectedIndex = tabController.index;
    });
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
            //IF THE USER HAS NO FOLLOWER AND FOLLOWING
            // Expanded(child: TabBarView(controller: tabController, children: [
            //        NoFollow(followerEnum:FollowerEnum.follower ),
            //         NoFollow(followerEnum:FollowerEnum.following ),
            // ]))
             selectedIndex ==0?ResultPage(name: "abdu", subtitle: "abdu's post", avatar: AvatarImg(), isFollowed: true, brands: ["asstes/avata/nike.png","assets/avatar/HYPE.png"]):SizedBox()
            ]
          ),
        )),
      ),
    );
  }
}
