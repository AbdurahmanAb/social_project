import 'package:flutter/material.dart';
import 'package:kim/features/profile/presentation/widgets/profile_top_bar.dart';
import 'package:kim/utils/constants.dart';

class ProfileFollower extends StatefulWidget {
  const ProfileFollower({super.key});

  @override
  State<ProfileFollower> createState() => _ProfileFollowerState();
}

class _ProfileFollowerState extends State<ProfileFollower> with TickerProviderStateMixin {
late TabController tabController;

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
          children: [ProfileTopBar(text: "Center Text"),
          SizedBox(
            height: 100,
            child: TabBar(
            
              controller: tabController,
              tabs: [
                Text("y"),Text("yoo")
              ]),
          )
          
          
          
          ],
        ),
      )),
    );
  }
}
