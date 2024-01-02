import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/core/brand_post.dart';
import 'package:kim/core/link_preview.dart';
import 'package:kim/core/text/MidText.dart';
import 'package:kim/core/ui/avatar.dart';
import 'package:kim/core/user_post.dart';
import 'package:kim/features/explore/presentation/widgets/brand.dart';
import 'package:kim/features/feed/presentation/widgets/comment_reply.dart';
import 'package:any_link_preview/any_link_preview.dart';
import '../../../../utils/constants.dart';

class FeedCommentList extends StatelessWidget {
  bool brandPost;
  final String? url;
  final String? imgUrl;
  final String text;
  final int index;

  FeedCommentList(
      {this.brandPost = false,
      super.key,
      this.url="https://google.com",
      this.imgUrl="",
      required this.text, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: index*4),
      child: Container(

          padding: EdgeInsets.all(Constants.height20),
          decoration: BoxDecoration(
              border: Border(
                   left: BorderSide(width: 1, color:index>0? Constants.chipColor:Colors.transparent))
                  
                  ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                brandPost ? BrandPost() : UserPost(),
                Spacer(),
                Text(
                  "24분 전",
                  style: TextStyle(fontSize: Constants.smFont),
                ),
                SizedBox(
                  width: Constants.height10,
                ),
                Icon(
                  Icons.more_horiz,
                  size: Constants.height15,
                )
              ],
            ),
            SizedBox(
              height: Constants.height10,
            ),
            MidText(text: text),
            SizedBox(
              height: Constants.height15,
            ),
            // imgUrl !=""?
            SizedBox(
              width: double.maxFinite,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Constants.height20),
                child: imgUrl !="" ? Image.asset(imgUrl!, fit: BoxFit.fill,):SizedBox.shrink() ,
              ),
            ),
            SizedBox(height: Constants.height15,),
            //call the link preview widget to preview the link
            LinkPreview(url: url.toString()),
        
            SizedBox(height: Constants.height10/3,),
            Text(url!, style: TextStyle(color: Colors.blue, fontSize: Constants.mdFont),),
            SizedBox(
              height: Constants.height20,
            ),
            CommentReply()
          ])),
    );
  }
}
