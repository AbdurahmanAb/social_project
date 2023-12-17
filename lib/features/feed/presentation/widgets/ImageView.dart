import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ImageView extends StatelessWidget {
  final int id;
  const ImageView({required this.id, super.key});

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
            Expanded(child: Center(child: Image.asset("assets/avatar/post4.jpg" ,fit: BoxFit.cover,width: double.maxFinite,))),
         
          ],
        ),
      ),
    );
  }
}