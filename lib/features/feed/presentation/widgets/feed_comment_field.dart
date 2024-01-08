import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/core/my_bottom_sheet.dart';
import 'package:kim/utils/constants.dart';

class FeedCommentField extends StatefulWidget {
  const FeedCommentField({super.key});

  @override
  State<FeedCommentField> createState() => _FeedCommentFieldState();
}

class _FeedCommentFieldState extends State<FeedCommentField> {
  bool hasText = false;

  final TextEditingController _textEditingController = TextEditingController();
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
                    onTap: () {
                      MyBottomSheet.showBottomSheet(
                          context,
                          "카메라",
                          "assets/icons/icon_modify.png",
                          "assets/icons/icon_picture.png",
                          "사진 앨범",
                          "닫기");
                    },
                    child: Image.asset("assets/icons/icon_modify.png")),
                SizedBox(
                  width: Constants.height15,
                ),
                Expanded(
                  child: Stack(

                    children: [
                      TextField(
                        controller: _textEditingController,
                        maxLines: null,
                        style: TextStyle(fontSize: Constants.mdFont),
                        //  maxLines: null,

                        onChanged: (value) {
                          if (value.isNotEmpty) {
                           setState(() {
                              hasText = true;
                           });
                          }else{
                            setState(() {
                              hasText = false;
                            });
                          }
                        },
                        decoration: InputDecoration(
                          filled: true,
                          isDense: true,
                          hintStyle: const TextStyle(fontSize: 12),
                          fillColor: Constants.bottom,
                          hintText: "댓글을 남겨주세요",
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: Constants.height20,
                              vertical: Constants.height10),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                 hasText?     Positioned(
                          right: Constants.height15,
                           top: Constants.height10/2 ,
                          child: Center(
                            child: Text(
                              '게시',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFFFF0089),
                                fontSize: 14,
                                fontFamily: 'KoPubDotum_Pro',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )):SizedBox.shrink()
                    ],
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
