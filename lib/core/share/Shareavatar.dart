import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShareAvatar extends StatelessWidget {
  final String path;

  const ShareAvatar({super.key, required this.path});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 63,
          height: 63,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(137.78),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x0C000000),
                blurRadius: 6,
                offset: Offset(0, 0),
                spreadRadius: 0,
              )
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 63,
                height: 63,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/avatar/avatar4.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
      bottom: 2,
      right: 2,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage("assets/icons/appicon.png") ,//NetworkImage("https://via.placeholder."),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}