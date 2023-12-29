import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedImagesList extends StatelessWidget {
final String imgUrl;
  const FeedImagesList({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Get.toNamed("/image?id=0");
        },
        child: Container(
          width: double.maxFinite,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
               imgUrl,
                fit: BoxFit.cover,
              )),
        ));
  }
}
