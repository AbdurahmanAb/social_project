import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/utils/constsnts.dart';

class FeedComment extends StatefulWidget {
  const FeedComment({super.key});

  @override
  State<FeedComment> createState() => _FeedCommentState();
}

class _FeedCommentState extends State<FeedComment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.black,
      padding: EdgeInsets.only(top: 20,bottom: 40,left: 10,right: 10),
      child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
children: [
  Icon(CupertinoIcons.camera),
  SizedBox(width: Constants.height15,),
  SizedBox(
    height: 35,
  width: Constants.screen_width*0.7,

    child: TextField(
     autofocus: false, 
     
      decoration: InputDecoration(
     filled: true,
     
     fillColor: Constants.Iconbg,
     labelStyle: TextStyle(
      fontSize: 12
     ),
     contentPadding: EdgeInsets.symmetric(vertical: Constants.height15, horizontal: Constants.height10),
        border: OutlineInputBorder(
        
          borderRadius: BorderRadius.circular(25)
          
        )
      ),
    ),
  )
],
      ),
    );
  }
}