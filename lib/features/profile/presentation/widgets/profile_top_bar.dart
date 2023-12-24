import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/utils/constants.dart';

import '../../../../core/text/HeaderText.dart';

class ProfileTopBar extends StatelessWidget {
  final String text;
  const ProfileTopBar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.black,
      padding: EdgeInsets.symmetric(
          vertical: Constants.height20, horizontal: Constants.height10),
      child: Row(
        children: [
          Icon(CupertinoIcons.back),
          Expanded(
              child: Center(
                  child: Header(
            text: text,size: Constants.mdFont + 2,
          )))
        ],
      ),
    );
  }
}
