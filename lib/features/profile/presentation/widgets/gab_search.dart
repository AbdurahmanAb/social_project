import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants.dart';

class GabSearch extends StatelessWidget {
  const GabSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                    color: Constants.Iconbg,
                    padding: EdgeInsets.only(
                        top: 5,
                        right: Constants.height10,
                        left: Constants.height10,
                        bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [Text("최신순"), Icon(Icons.arrow_drop_down)],
                        ),
                        GestureDetector(
                            onTap: () {
                              Get.toNamed("/search");
                            },
                            child: Image.asset("assets/Lounge/icon_search.png"))
                      ],
                    ),
                  );
  }
}