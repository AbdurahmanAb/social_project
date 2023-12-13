import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/features/Splash/presentation/widgets/HeaderText.dart';
import 'package:kim/utils/constsnts.dart';

class TopButtons extends StatelessWidget {
  const TopButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
           padding: EdgeInsets.only(left:12, right: 12, top: 10, bottom: 10),
    color: Constants.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right:10),
                        
        
                            child: Image.asset("assets/Lounge/brand_badge.png",) 
                          
                        //   child: Chip(
                            
                        //     padding: EdgeInsets.all(5),
                        //     backgroundColor:Constants.white,
                           
                        //     label: Text("Lacstoe", style: TextStyle(color: Colors.black),)),
                        ),
                        Header(text: "@라코스테",size: 15,)
                      ],
                    ),
                    Row(children: [
                                Image.asset("assets/Lounge/button_favorite.png"),
                   
                      SizedBox(width: 10,),
                  
                         Image.asset("assets/Lounge/button_share.png"),
                     
                    ],)
                  ],
                ),
    );
  }
}