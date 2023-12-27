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
final int follower =2;
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
      backgroundColor:      Constants.lightblack,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
     
          child: Column(
            children: [ProfileTopBar(text: "빛나는_별다방"),
            SizedBox(
             height: Constants.height15*4,
              child: TabBar(
                indicatorColor: Constants.appColor,
              unselectedLabelColor: Constants.white,
              labelColor: Constants.appColor,
              overlayColor: MaterialStatePropertyAll(Colors.transparent),
              indicatorSize: TabBarIndicatorSize.tab,
                controller: tabController,
                tabs: [
                  Text("$follower  팔로워"),
                  Text("$following  팔로잉")
                ]),
            ),
            SizedBox(height: Constants.height20 ,),
            //IF THE USER HAS NO FOLLOWER AND FOLLOWING
            // Expanded(child: TabBarView(controller: tabController, children: [
            //        NoFollow(followerEnum:FollowerEnum.follower ),
            //         NoFollow(followerEnum:FollowerEnum.following ),
            // ]))

            //IF HAVE FOLLOWER  WE LOAD ALL OF THE THROUGH THI WIDGET
            
             selectedIndex ==0?ResultPage(name: "abdu", subtitle: "abdu's post", avatar: AvatarImg(), isFollowed: true, brands: ["assets/avatar/nike.png","assets/avatar/HYPE.png"]):SizedBox(),
            ResultPage(name: "kim", subtitle: "kim's post", avatar: AvatarImg(ImgUrl: "assets/avatar/avatar.jpg"), isFollowed: false, brands: ["assets/avatar/goout-lg.png","assets/avatar/preme.png", "assets/avatar/leauge.png"]),
            
            ]
          ),
        )),
      ),
    );
  }
}
