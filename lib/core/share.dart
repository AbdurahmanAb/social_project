
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/core/MidText.dart';
import 'package:kim/core/Row_widget.dart';
import 'package:kim/core/button.dart';
import 'package:kim/core/HeaderText.dart';

import '../utils/constsnts.dart';

class Share{
 static void   showBottomSheet(BuildContext context) {
  
     showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
      constraints: BoxConstraints(minHeight: 0.8, maxHeight: Constants.screen_height*0.7 ,),
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
          
            color: Constants.appBgColor,
             //padding: EdgeInsets.symmetric(vertical:Constants.height20, horizontal: Constants.height10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              
              Padding(
              padding: EdgeInsets.symmetric(vertical:15, horizontal: Constants.height10),
                
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                 
                 Row(children: [Row(
                   children: [
                     Container(
                       padding: EdgeInsets.all(Constants.height10),
                       color: Constants.Iconbg,
                      child: Image.asset("assets/avatar/App Icon(1).png"),
                     ),
                     SizedBox(width: 5,),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Header( text: "iOS 15 Kit for Figma",size: 12),
                         Text("figma.com", style: TextStyle(fontWeight: FontWeight.w100),)
                       ],
                     )
                   ],
                 )],),
                 Container(
                   padding: EdgeInsets.all(10),
                              
                  decoration: BoxDecoration(
                       color:Constants.Iconbg,
                   borderRadius: BorderRadius.circular(50)
                  ),
                   child: Icon(Icons.close, size: 12,),
                 )
                              ],),
              ),
              Divider(),
               
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
          padding: EdgeInsets.symmetric(vertical:0, horizontal: Constants.height10),
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset("assets/avatar/AirDrop.png")),
                        Text("AirDrop",style: TextStyle(fontSize: 8),)
                      ],
                    ),
                     SizedBox(width: Constants.height20,
                  ),
                    
                    Column(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                        
                          
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(500),
                            child: Image.asset("assets/avatar/1.jpg", fit: BoxFit.cover,)),
                        ),
                          Text("Firt La",style: TextStyle(fontSize: 8),)
                      ],
                    ),
                    SizedBox(width: Constants.height20,
                  ),
                    Column(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                        
                          
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(500),
                            child: Image.asset("assets/avatar/2.jpg", fit: BoxFit.cover,)),
                        ),
                          Text("Group",style: TextStyle(fontSize: 8),),
                            Text("2 people",style: TextStyle(fontSize: 5),)
                      ],
                    ), SizedBox(width: Constants.height20,
                  ),Column(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                        
                          
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(500),
                            child: Image.asset("assets/avatar/3.jpg", fit: BoxFit.cover,)),
                        ),
                        Text("First",style: TextStyle(fontSize: 8),)
                      ],
                    ), SizedBox(width: Constants.height20,
                  ),Column(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                        
                          
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(500),
                            child: Image.asset("assets/avatar/4.jpg", fit: BoxFit.cover,)),
                        ),
                        Text("Third",style: TextStyle(fontSize: 8),)
                      ],
                    ), SizedBox(width: Constants.height20,
                  ),Column(
                      children: [
                        SizedBox(
                          height: 40,
                          width:40,
                        
                          
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(500),
                            child: Image.asset("assets/avatar/5.jpg", fit: BoxFit.cover,)),
                        ),
                         Text("Fourth",style: TextStyle(fontSize: 8),)
                      ],
                    ),
                  ],
                ),
              ),
            )    ,
            Divider(),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)
                        
                      ),
                      child: Icon(Icons.cleaning_services_rounded),
                    ),
            Text("AirDrop",style: TextStyle(fontSize: 8),)
                  ],
                ),
                    Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)
                        
                      ),
                      child: Icon(Icons.cleaning_services_rounded),
                    ),
            Text("AirDrop",style: TextStyle(fontSize: 8),)
                  ],
                ),    Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)
                        
                      ),
                      child: Icon(Icons.cleaning_services_rounded),
                    ),
            Text("AirDrop",style: TextStyle(fontSize: 8),)
                  ],
                ),    Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)
                        
                      ),
                      child: Icon(Icons.cleaning_services_rounded),
                    ),
           Text("AirDrop",style: TextStyle(fontSize: 8),)
                  ],
                ),
              ],
             ),
           ),Divider(),
           Padding(
             padding: EdgeInsets.all(Constants.height10),
             child: Container(
             padding: EdgeInsets.all(Constants.height10),
             decoration: BoxDecoration(
               color: Constants.Iconbg,
               borderRadius: BorderRadius.circular(Constants.height10)
             ),
              child: 
                RowWidget(content1:   MidText(text:"Copy Link"), content2:    Icon(Icons.copy))      
            
             ),
           ),
                  Padding(
                    padding:  EdgeInsets.all(Constants.height10),
                    child: Container(
                      padding: EdgeInsets.all(Constants.height10),
                               decoration: BoxDecoration(
                                 color: Constants.Iconbg,
                                 borderRadius: BorderRadius.circular(Constants.height10)
                               ),
                               child: Column(
                                children: [
                                  RowWidget(content1: MidText(text: "Add to Reading List"), content2: Icon(Icons.read_more_sharp))
                                , Divider(), RowWidget(content1: MidText(text: "Add BookMark"), content2: Icon(Icons.bookmark_add))
                                , Divider(), RowWidget(content1: MidText(text: "Add to Favorites"), content2: Icon(Icons.star))
                                , Divider(), RowWidget(content1: MidText(text: "Find on Page"), content2: Icon(Icons.search))
                                , 
                                ],
                               
                               ),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                      Text( "Edit Actions...",style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  )
           
              ],
            ),
          ),
        );
      },
    );
  }
}