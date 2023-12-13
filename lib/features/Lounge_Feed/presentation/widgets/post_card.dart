import 'package:flutter/material.dart';
import 'package:kim/utils/constsnts.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(child: Container(
      color: Color(0xFF363638),
      padding: EdgeInsets.all(Constants.height20),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/Lounge/arrow.png"),
              SizedBox(width: Constants.height10,),
              Text("공지로 고정되었습니다.", style: TextStyle(fontWeight: FontWeight.w200),)
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
                  padding:EdgeInsets.all(5),
                  decoration: BoxDecoration(
                  color: Constants.white,
                  borderRadius: BorderRadius.circular(15)
                ),child: Text("+3", style: TextStyle(color: Constants.black, fontWeight: FontWeight.bold),),))
          
                ],
              ),
              SizedBox(width: Constants.height10,),
              Column(
                children: [
               
                  Wrap(
                    children: [
   Text("🏕고아웃 2024 캠핑 페스티벌🤠"),
   
                    ],
                  )
                  
                ],
              ),
              
              ],
          ),
          SizedBox(height: Constants.height20,),
          Row(
         
            children: [
             
               Row(
              
                 children: [
                   Image.asset("assets/Lounge/happy.png"),
                                SizedBox(width: 5,),
             Text("315"),
                           SizedBox(width: 5,),
                   Image.asset("assets/Lounge/sad.png"),
                                 SizedBox(width: 20,),
                 ],
               ),
            
                
               Row(
                 children: [
                   Image.asset("assets/Lounge/comment.png"),
                   SizedBox(width: 10,),
             Text("72", style: TextStyle()),
                           SizedBox(width: 20,),
                 ],
               ),
               
                              
               Row(
                 children: [
                   Image.asset("assets/Lounge/view.png"),
                                 SizedBox(width: 5,),
             Text("792"),
                 ],
               ),
              
                          ],
          )
        ],
      ),
    ));
  }
}