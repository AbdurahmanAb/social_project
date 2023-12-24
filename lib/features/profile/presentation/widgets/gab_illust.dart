import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';

class GabIllust extends StatelessWidget {
  const GabIllust({super.key});

  @override
  Widget build(BuildContext context) {
    return    Padding(
              padding: EdgeInsets.only(
                  bottom: Constants.height20 * 1.8,
                  top: Constants.height10,
                  left: Constants.height10,
                  right: Constants.height10),
              child: Container(
                height: 160,
                decoration: BoxDecoration(
                    color: Color(0xFF444446),
                    borderRadius: BorderRadius.circular(25)),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      "assets/avatar/gab_illust.png",
                      height: 120,
                    )),
              ),
            );
  }
}