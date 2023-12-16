import 'dart:ffi';

class FeedModel{
  final String uname;
  
final String img;
final String text;
final String brand;
final Array tags;

FeedModel({required this.uname, required this.brand, required this.img, required this.tags, required this.text});

}