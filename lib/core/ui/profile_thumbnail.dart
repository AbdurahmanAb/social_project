import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/utils/constants.dart';

class ProfileThumbnail extends StatelessWidget {
  const ProfileThumbnail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
     
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect
              (
                borderRadius: BorderRadius.vertical(top: Radius.circular(Constants.height15)),
                child: Image.asset("assets/avatar/post2.jpg",fit:BoxFit.cover,   width: double.maxFinite,height: Constants.screen_height*.25,)),
               Positioned(
                top: 15,
                left: 10,
                width: Constants.screen_width - Constants.height15,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/icons/button_closed.png"),
                  Row(
                    children: [
                      Icon(Icons.share),
                      SizedBox(width: 20,)
                      , Icon(Icons.abc_outlined)
                    ],
                  )
                ],
               ))   
            ],
          )
        ],
      ),
    );
  }
}

class ProfileThumbnailShow {
  static void showProfileThumnail(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        constraints: BoxConstraints(maxHeight: Constants.screen_height * .8),
        context: context,
        builder: (context) => ProfileThumbnail());
  }
}
