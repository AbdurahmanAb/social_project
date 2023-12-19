import 'package:flutter/cupertino.dart';
import 'package:kim/utils/constants.dart';

class SearchCards extends StatelessWidget {
  final String date;
  final String imageUrl;
  final String text;
  final String bottomtxt1;
  final String bottomtxt2;
   SearchCards({required this.text, required this.bottomtxt1, required this.bottomtxt2, required this.date, required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
height: 200,
color: Constants.bottom,
child: imageUrl != ""?Row(
  children: [
    
  ],
):Column(
  children: [],
) ,
    );
  }
}