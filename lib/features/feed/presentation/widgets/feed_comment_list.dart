import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/core/brand_post.dart';
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
  final double index;

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
          //  url != ""? AnyLinkPreview(
          //     link: "https://www.youtube.com/watch?v=tK5lwBSVdEc",
          //     displayDirection: UIDirection.uiDirectionHorizontal,
          //     showMultimedia: true,
          //     bodyMaxLines: 10,

          //     previewHeight: 80,

          //     bodyTextOverflow: TextOverflow.ellipsis,
          //     titleStyle: TextStyle(
          //       color: Colors.black,
          //       fontWeight: FontWeight.bold,
          //       fontSize: 15,
          //     ),
          //     bodyStyle: TextStyle(color: Colors.grey, fontSize: 12),
          //     errorBody: 'Link Not found',
          //     errorTitle: 'Show my custom error title',
          //     errorWidget: Container(
          //       color: Colors.grey[300],
          //       child: Text('Oops!'),
          //     ),
          //     errorImage: "https://google.com/",
          //     cache: Duration(days: 1),
          //     backgroundColor: Colors.grey[300],
          //     borderRadius: 12,
          //     removeElevation: false,
          //     boxShadow: [BoxShadow(blurRadius: 3, color: Colors.grey)],
          //     onTap: () {}, // This disables tap event
          //   ):SizedBox.shrink(),
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
