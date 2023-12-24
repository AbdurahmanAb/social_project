import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kim/features/profile/presentation/widgets/gab_search.dart';

import '../../../../utils/constants.dart';
import '../../../Lounge_Feed/presentation/widgets/comment.dart';
import '../../../Lounge_Feed/presentation/widgets/long_post.dart';

class GabPage extends StatelessWidget {
  const GabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(" ffffffffff"),
        Divider(),
        SizedBox(
          height: 30,
          width: 70,
          child: PageView.builder(scrollDirection: Axis.horizontal, itemCount: 4, itemBuilder: (context, index) {
            return Image.asset("assets/avatar/nike.png");
          },),
       
        ),   GabSearch(),  const LongPost(),
                         
      ],
    );
  }
}