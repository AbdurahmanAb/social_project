
import 'package:flutter/material.dart';
import 'package:kim/core/button.dart';
import 'package:kim/utils/constsnts.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(Constants.height20),
          height: 300,
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight:Radius.circular(25), topLeft: Radius.circular(25) )
       ,  color: Constants.bottom
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Row(
                children: [
                  Image.asset("assets/Lounge/text_icon(1).png"), SizedBox(width: Constants.height10,),
                  Text("최신순"),
                ],
              ),
              Row(
                children: [
                   Image.asset("assets/Lounge/text_icon.png"), SizedBox(width: Constants.height10,),
                  Text("인기순"),
                ],
              ),
              Row(
                children: [
                   Image.asset("assets/Lounge/text_icon(2).png"), SizedBox(width: Constants.height10,),
                  Text("갭스타"),
                ],
              )
,              AppButton(text: "닫기")
            ],
          ),
        );
      },
    );
  }

    return  SingleChildScrollView(child: Container(
      color: const Color(0xFF363638),
      padding: EdgeInsets.all(Constants.height20),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/Lounge/arrow.png"),
              SizedBox(width: Constants.height10,),
              const Text("공지로 고정되었습니다.", style: TextStyle(fontWeight: FontWeight.w200),)
            ],
          ),
          SizedBox(height: Constants.height20,),
          Row(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/Lounge/slide_image.png",   fit: BoxFit.cover,   height: 70,
                  
                  ),
                  ),
                    Positioned(
                top: 2,
                right:4 ,
                child: Container(
                  padding:const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                  color: Constants.white,
                  borderRadius: BorderRadius.circular(15)
                ),child: const Text("+3", style: TextStyle(color: Constants.black, fontWeight: FontWeight.bold),),))
          
                ],
              ),
              SizedBox(width: Constants.height10,),
              Container(
              
                child: Expanded(
                  child: GestureDetector(
                    onTap: (){
_showBottomSheet(context);
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                     
                        Text("🏕고아웃 2024 캠핑 페스티벌🤠"),
                                Text("24년 4월 자라섬 🌱캠핑장에서 🎸 음악과 함께하는 캠핑을 예약하세요!  - 2023. 11.20 ~ 2024.02.30 -"), 
                       
                      ],
                    ),
                  ),
                ),
              ),
              
              ],
          ),
          SizedBox(height: Constants.height20,),
          Row(
         
            children: [
             
               Row(
              
                 children: [
                   Image.asset("assets/Lounge/happy.png"),
                                SizedBox(width: Constants.height10,),
             const Text("315"),
                           SizedBox(width: Constants.height10,),
                   Image.asset("assets/Lounge/sad.png"),
                                 SizedBox(width: Constants.height20,),
                 ],
               ),
            
                
               Row(
                 children: [
                   Image.asset("assets/Lounge/comment.png"),
                   const SizedBox(width: 5,),
             const Text("72", style: TextStyle()),
                           const SizedBox(width: 20,),
                 ],
               ),
               
                              
               Row(
                 children: [
                   Image.asset("assets/Lounge/view.png"),
                                 const SizedBox(width: 5,),
             const Text("792"),
                 ],
               ),
              
                          ],
          )
        ],
      ),
    ));
  }
}