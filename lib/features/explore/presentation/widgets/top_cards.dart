import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/features/feed/presentation/widgets/Tags.dart';
import 'package:kim/utils/constants.dart';

class TopCard extends StatelessWidget {
  final String brand;
  final String brandText;
  final String text;
  const TopCard({ required this.brand, required this.brandText, required this.text,  super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
       color: Constants.mainColor,
       padding: EdgeInsets.all(Constants.height10),
       child: Column(
         children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("새로 열린 브랜드 라운지", style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              Icon(CupertinoIcons.forward)
            ],
          ),
          SizedBox(height: Constants.height10,),

           Swiper(
itemCount: 2,
containerHeight:150 ,
itemHeight: 170,
itemWidth: 170,
containerWidth: 150,
             itemBuilder:(context, i)=> Container(
                  
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Constants.bottom
              ),
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
              Row(
                
                children: [
              Chip(label: Text(brand),color:MaterialStatePropertyAll(  Constants.white, ),labelStyle: TextStyle(color: Constants.black, fontWeight: FontWeight.bold),),
              SizedBox(width: 5,),
              Text(brandText)
             
              ],),
                SizedBox(height: 5,),
              Text(text)
                ],
              ),
             ),
           ),
         ],
       ),
    );
  }
}