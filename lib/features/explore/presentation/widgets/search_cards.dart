import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/features/explore/presentation/widgets/brand.dart';
import 'package:kim/utils/constants.dart';

class SearchCards extends StatelessWidget {
  final String date;
  String imageUrl;
  final String text;
  final String bottomtxt1;
  final Widget brand;
  final String bottomtxt2;
  SearchCards(
      {
        required this.brand,
        required this.text,
      required this.bottomtxt1,
      required this.bottomtxt2,
      required this.date,
      this.imageUrl = "",
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Constants.bottom,
      child: imageUrl != ""
          ? Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      brand,
                        SizedBox(
                          height: 15,
                        ),
                        Text(date),
                        SizedBox(
                          height: 10,
                        ),
                        Text(text, style:TextStyle(fontSize: 12)),
                        SizedBox(
                          height: 10,
                        ),
                        FractionallySizedBox(
                          widthFactor: 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text(bottomtxt1), Text(bottomtxt2)],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    height: 126,
                    width: 100,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "assets/avatar/post5.jpg",
                          fit: BoxFit.fill,
                        )),
                  )
                ],
              ),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              brand,
                Text(date),
                Text(text, style:TextStyle(fontSize: 12)),
                FractionallySizedBox(
                  widthFactor: 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text(bottomtxt1), Text(bottomtxt2)],
                  ),
                )
              ],
            ),
    );
  }
}
