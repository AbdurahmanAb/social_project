
import 'package:flutter/material.dart';

import 'package:get/get.dart';


class ImageView extends StatelessWidget {
  final String path;

 ImageView({ super.key, required this.path});

List<String> assets =["assets/avatar/post1.jpg","assets/avatar/post2.jpg","assets/avatar/post3.jpg","assets/avatar/post5.jpg"];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
        
              padding: const EdgeInsets.all(14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
            Get.back();
                    },
                    child: Icon(Icons.close)),
                  Text("첨부",style: TextStyle(color: Colors.blue),)
                ],
              ),
            ),
            Expanded(child: Center(child: Image.asset(path,fit: BoxFit.cover,width: double.maxFinite,))),
         
          ],
        ),
      ),
    );
  }
}