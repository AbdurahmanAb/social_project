import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../Row_widget.dart';
import '../text/MidText.dart';

class ButtonActions extends StatelessWidget {
  const ButtonActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     // padding: EdgeInsets.all(Constants.height20),
      decoration: BoxDecoration(
            color: Color(0xFF2C2C2E),
          borderRadius:
              BorderRadius.circular(Constants.height10)),
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.all(Constants.height10),
            child: RowWidget(
                alignment: MainAxisAlignment.spaceBetween,
                content1:
                    const MidText(text: "Add to Reading List"),
                content2:
                    Image.asset("assets/icons/icon_glass.png")),
          ),
          const Divider(),
          Padding(
            padding:  EdgeInsets.all(Constants.height10),
            child: RowWidget(
                alignment: MainAxisAlignment.spaceBetween,
                content1: const MidText(text: "Add BookMark"),
                content2:
                    Image.asset("assets/icons/icon_book.png")),
          ),
          const Divider(),
          Padding(
            padding:  EdgeInsets.all(Constants.height10),
            child: RowWidget(
                alignment: MainAxisAlignment.spaceBetween,
                content1: MidText(text: "Add to Favorites"),
                content2: Image.asset("assets/feed/icon_star.png")),
          ),
          const Divider(),
           Padding(
             padding:  EdgeInsets.all(Constants.height10),
             child: RowWidget(
                alignment: MainAxisAlignment.spaceBetween,
                content1: MidText(text: "Find on Page"),
                content2:Image.asset("assets/feed/icon_find.png") ),
           ),
        ],
      ),
    );
  }
}