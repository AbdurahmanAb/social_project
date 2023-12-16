import 'package:flutter/material.dart';
import 'package:kim/core/avatar.dart';
import 'package:kim/utils/constsnts.dart';

class LongPost extends StatelessWidget {
  const LongPost({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(
    
    color: Constants.mainColor,
    padding: EdgeInsets.all(Constants.height20),
    child: Column(
      children: [
     Row(
          children: [
            const Spacer(),
            
              const Text("24분 전"),
              SizedBox(width: Constants.height10,),
              const Icon(Icons.more_horiz)
            
          ],
        ),
        
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
        Text("올해 고아웃 캠핑 너무 좋았어요~ 행사도 다양하고 사람들도 많이 만나고 내년도 좋은 추억 만들고 싶네요~ 예약 ㄱ ㄱ", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),)
         ,Text("올해 중간에 비가와서 쬐끔 힘들었지만 비 온뒤에 날씨가 끝내줘서 밤에 별들을 볼수 있어 너무 좋아음. 장비를 너무 쓸데없이 많이 가져가서 올해는 좀 정리를 해가야겠다."),
        SizedBox(height: Constants.height20,),
         Image.asset("assets/Lounge/image_feed.png"),
SizedBox(height: 20,),
         Text("https:/www.gooogle.com/q=?kim/", style: TextStyle(color: Colors.blue), textAlign: TextAlign.start,)
     ,SizedBox(height: 10,),
     Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Constants.white
      ),
       child:Row(
        children: [
          SizedBox(
            height: 90,
            child: Image.asset("assets/Lounge/image_feed.png", fit: BoxFit.cover,)),
          SizedBox(width: Constants.height20,),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("우리의 최종목적은 함께 재밌게 우리의 최종목적은 함께 재밌게 노는 캠핑이란 말이닷! 👏",style: TextStyle(color: Constants.mainColor),),
            Text("현대자동차", style: TextStyle(color: Constants.mainColor),)
            ],
          ))
        ],
       ) ,
     )
      ],
    ),
    );

  }
}