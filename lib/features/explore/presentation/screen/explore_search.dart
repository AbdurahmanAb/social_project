import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/core/BottomBar.dart';
import 'package:kim/features/explore/presentation/screen/PageTwo.dart';
import 'package:kim/features/explore/presentation/screen/emoji_page.dart';
import 'package:kim/features/explore/presentation/screen/pageOne.dart';
import 'package:kim/features/explore/presentation/screen/recent_search.dart';
import 'package:kim/features/explore/presentation/screen/result_page.dart';
import 'package:kim/features/explore/presentation/widgets/feed_search.dart';
import 'package:kim/features/explore/presentation/widgets/search_cards.dart';
import 'package:kim/features/explore/presentation/widgets/search_menu.dart';
import 'package:kim/utils/constants.dart';

class ExploreSearch extends StatefulWidget {
  const ExploreSearch({super.key});

  @override
  State<ExploreSearch> createState() => _ExploreSearchState();
}

class _ExploreSearchState extends State<ExploreSearch> {
late int index;
late bool checked;
void initState(){
  
  super.initState();
  index =0;
  checked = false; 
}


void dispose(){
  super.dispose();
}


  @override
  Widget build(BuildContext context) {

 


    return Scaffold(
      backgroundColor: Constants.Iconbg,
        body: SingleChildScrollView(
            child: SafeArea(
                child: Column(
      children: [
        Container(
          color: Constants.black,
          padding: EdgeInsets.only(left: 10, top: 20, bottom: 20, right: 10),
          child: Row(
            children: [
              Icon(CupertinoIcons.back),
              SizedBox(
                width: Constants.height10,
              ),
              SizedBox(
                width: Constants.screen_width * 0.74,
                height: 35,
                child: Stack(
                  children: [
                    TextField(
                      readOnly:!checked ,
                      onTap: (){
                       setState(() {
                          checked = true;
                       print(checked);
                       });
                      },
                      onChanged: (value) {
                        
                        print(value);
                      },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              top: 12, bottom: 25, right: 10, left: 40),
                          hintStyle: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w200),
                          hintText: "위갭을 탐험하세요",
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          filled: true,
                          fillColor: Constants.bottom),
                    ),
                    Positioned(
                        left: 10,
                        bottom: 6.5,
                        child: Image.asset(
                          "assets/Lounge/icon_explore.png",
                          height: 19,
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
     !checked?

       Column(
         children: [
           Container(
                 padding: EdgeInsets.all(8),
                 color: Constants.black,
                 child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    index =0;
                  });
                },
                child: Container(
                  width: 75,
                  decoration: BoxDecoration(
                        color:index==0? Constants.appColor:Colors.transparent,
                        borderRadius: BorderRadius.circular(12)
                       ),
                  padding: EdgeInsets.all(8.0),
                         
                  child:  Center(
                    child: Text(
                        "gab",
                        style: TextStyle(
                          color:index!=0?  Constants.white:Constants.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                    ),
                  )
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    index = 1;
                  });
                },
                child: Container(
                       width: 75,
                       decoration: BoxDecoration(
                        color: index==1? Constants.appColor:Colors.transparent,
                        borderRadius: BorderRadius.circular(12)
                       ),
                  padding: EdgeInsets.all(8.0),
                  child: Center(          
                    child: Text("댓글", style: TextStyle(
                          color:index!=1?  Constants.white:Constants.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    index=2;
                  });
                },
                child: Container(
                       width: 75,
                       decoration: BoxDecoration(
                        color: index==2? Constants.appColor:Colors.transparent,
                        borderRadius: BorderRadius.circular(12)
                       ),
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text("라운지", style: TextStyle(
                          color: index!=2? Constants.white:Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),),
                  ),
                ),
              ), GestureDetector(
                onTap: (){
                  setState(() {
                    index =3;
                  });
                },
                child: Container(
                       width: 75,
                       decoration: BoxDecoration(
                        color: index==3?Constants.appColor:Colors.transparent,
                        borderRadius: BorderRadius.circular(12)
                       ),
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text("사람", style: TextStyle(
                          color: index==3? Constants.black:Constants.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),),
                  ),
                ),
              ),
            ],
            
                 ),
               ),
                index ==0?PageOne():index==1?PageTwo(): index ==3?ResultPage():index==2?EmojiPage():EmojiPage()
        
         ],
       ):RecentPage()
             
      ],
    )))
    ,
    bottomNavigationBar: BottomBar(),);
  }
}
