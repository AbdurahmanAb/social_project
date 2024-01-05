import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/core/MyBottomSheet.dart';
import 'package:kim/utils/constants.dart';

class FeedCommentField extends StatefulWidget {
  const FeedCommentField({super.key});

  @override
  State<FeedCommentField> createState() => _FeedCommentFieldState();
}

class _FeedCommentFieldState extends State<FeedCommentField> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        color: Constants.black,
        padding:
            const EdgeInsets.only(top: 10, bottom: 20, left: 10, right: 10),
        child: Column(
          children: [
   
            SizedBox(
              height: Constants.height10 / 2,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 InkWell(
                  onTap: (){
                    MyBottomSheet.showBottomSheet(context, "카메라", "assets/icons/icon_modify.png", "assets/icons/icon_picture.png", "사진 앨범", "닫기");
                  },
                  child: Image.asset("assets/icons/icon_modify.png")),
                SizedBox(
                  width: Constants.height15,
                ),
              Expanded(
                child: IntrinsicHeight(
                  child: TextField(
                      maxLines: null,               //  maxLines: null,
                    decoration: InputDecoration(
                      filled: true,
                      
                      hintStyle: const TextStyle(fontSize: 12),
                      fillColor: Constants.bottom,
                      hintText: "댓글을 남겨주세요",
                      //contentPadding: EdgeInsets.all(Constants.height20),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
              )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
