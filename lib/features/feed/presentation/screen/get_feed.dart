import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/features/Lounge_Feed/presentation/widgets/LongPostCard.dart';
import 'package:kim/features/feed/presentation/widgets/FeedComment.dart';
import 'package:kim/features/feed/presentation/widgets/FeedTop.dart';
import 'package:kim/utils/constsnts.dart';

import '../../../../core/avatar.dart';

class Fedd extends StatefulWidget {
  final int id;
  const Fedd({ required this.id ,super.key});

  @override
  State<Fedd> createState() => _FeddState();
}

class _FeddState extends State<Fedd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.Iconbg,
     body:SingleChildScrollView(
       child: SafeArea(
         child: Column(
          children: [
           FeedTop(),
           Container(
    
    color: Constants.mainColor,
    padding: EdgeInsets.all(Constants.height20),
    child: Column(
      children: [
    
        
        Row(
          children: [
            const AvatarImg(height: 40,),
    SizedBox(width: Constants.height10,),
            Column(
    mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("빛나는_별다방", style: TextStyle(fontSize: 12),),
                const SizedBox(height: 5,),
                const Text("@고아웃#캠핑", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w200),),
                const SizedBox(height: 5,),
                Row(
              
                  children: [
                    Image.asset("assets/Lounge/frame_badge.png"),
                    SizedBox(width: Constants.height10,),
                      Image.asset("assets/Lounge/frame_badge(1).png"),
                        SizedBox(width: Constants.height10,),
                        Image.asset("assets/Lounge/frame_badge(2).png")
                  ],
                )
              ],
            )
    
          ],
        ),
        SizedBox(height: Constants.height10,),
        Text("올해 고아웃 캠핑 너무 좋았어요~ 행사도 다양하고 사람들도 많이 만나고 내년도 좋은 추억 만들고 싶네요~ 예약 ㄱ ㄱ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
       ,SizedBox(height: Constants.height20 ,),
         Text("올해 중간에 비가와서 쬐끔 힘들었지만 비 온뒤에 날씨가 끝내줘서 밤에 별들을 볼수 있어 너무 좋아음. 장비를 너무 쓸데없이 많이 가져가서 올해는 좀 정리를 해가야겠다."),
        SizedBox(height: Constants.height20,),
         ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset("assets/avatar/post3.jpg",fit: BoxFit.cover,)),
SizedBox(height: 20,),
  
     
      ],
    ),
    ),
   
          ],
             ),
       ),
     ),
     bottomNavigationBar: FeedComment(),
     );
  }
}