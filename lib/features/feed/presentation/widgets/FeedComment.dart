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
    return SingleChildScrollView(
      child: Container(
        color: Constants.black,
        padding: EdgeInsets.only(top: 20, bottom: 40, left: 10, right: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.camera),
            SizedBox(
              width: Constants.height15,
            ),
            SizedBox(
                height: 32,
                width: Constants.screen_width * 0.8,
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    filled: true,
                    hintStyle: TextStyle(fontSize: 12),
                    fillColor: Constants.bottom,
                    hintText: "댓글을 남겨주세요",
                    contentPadding: EdgeInsets.all(Constants.height20),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
