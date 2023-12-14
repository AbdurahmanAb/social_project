import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kim/core/BottomBar.dart';
import 'package:kim/core/top_buttons.dart';
import 'package:kim/core/topbar.dart';
import 'package:kim/features/Lounge_Feed/presentation/widgets/LongPostCard.dart';
import 'package:kim/features/Lounge_Feed/presentation/widgets/post_card.dart';
import 'package:kim/utils/constsnts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
             height: double.maxFinite,
            child: Column(
              children: [
                const TopBar(),
                 TopButtons(),
                Container(
                  padding: EdgeInsets.all(Constants.height10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                             const Row(
                               children: [
                                 Text("최신순"),
                               Icon(Icons.arrow_drop_down)
                               ],
                             ),
                             GestureDetector(
                              onTap: (){
                          Get.toNamed("/search");      
                              },
                              child: Image.asset("assets/Lounge/icon_search.png"))
                    ],
                  ),
                ),
            const PostCard(),
          SizedBox(height: Constants.height20,),
             const Expanded(child: LongPost())
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
        
     
    );
  }
}