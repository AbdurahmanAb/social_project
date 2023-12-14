
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/core/button.dart';
import 'package:kim/core/HeaderText.dart';

import '../utils/constsnts.dart';

class Share{
 static void   showBottomSheet(BuildContext context) {
  
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      constraints: BoxConstraints(minHeight: 0.8, maxHeight: Constants.screen_height * 0.8),
      builder: (BuildContext context) {
        return Container(
   padding: EdgeInsets.all(Constants.height20),
          child: Column(
            
            children: [
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                
                Row(children: [Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(Constants.height10),
                      color: const Color.fromARGB(255, 87, 86, 86),
                     child: Icon(Icons.fiber_dvr),
                    ),
                    SizedBox(width: 5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Header( text: "IOS 15 KIT for Figma",size: 15),
                        Text("figma.com", style: TextStyle(fontWeight: FontWeight.w200),)
                      ],
                    )
                  ],
                )],),
                Container(
                  padding: EdgeInsets.all(Constants.height10),
              
                 decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 87, 86, 86),
                  borderRadius: BorderRadius.circular(50)
                 ),
                  child: Icon(Icons.close),
                )
              ],),
            ),
            Divider()
                
            ],
          ),
        );
      },
    );
  }
}