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

   FeedCommentList({this.brandPost = false, super.key, this.url, this.imgUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.only(left:8.0),
      child: Container(
       // height: 200,
        padding: EdgeInsets.all(Constants.height20),
        decoration: BoxDecoration(
      border: Border(left: BorderSide(width: 1, color: Constants.chipColor))
        ),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
      
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               brandPost? BrandPost(): UserPost(),
            Spacer(),
              Text("24분 전", style: TextStyle(fontSize: Constants.smFont),),
                SizedBox(
                  width: Constants.height10,
                ),
                 Icon(Icons.more_horiz, size:Constants.height15,)
            ],),
       SizedBox(height: Constants.height10,),
               MidText(text: text),

AnyLinkPreview(
    link: "https://www.hyundai.com",
    displayDirection: UIDirection.uiDirectionHorizontal,
    showMultimedia: true,
    bodyMaxLines: 10,
    previewHeight: 80,
    
    bodyTextOverflow: TextOverflow.ellipsis,
    titleStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 15,
    ),
    bodyStyle: TextStyle(color: Colors.grey, fontSize: 12),
    errorBody: 'Link Not found',
    errorTitle: 'Show my custom error title',
    errorWidget: Container(
        color: Colors.grey[300],
        child: Text('Oops!'),
    ),
    errorImage: "https://google.com/",
   // cache: Duration(days: 7),
    backgroundColor: Colors.grey[300],
    borderRadius: 12,
    removeElevation: false,
    boxShadow: [BoxShadow(blurRadius: 3, color: Colors.grey)],
    onTap: (){}, // This disables tap event
)
 ,              CommentReply()
          ]  
      )),
    );
    
  }
}