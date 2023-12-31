import 'package:flutter/cupertino.dart';
import 'package:kim/core/user_post.dart';

class Textpost extends StatelessWidget {
  const Textpost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserPost()
      ],
    );
  }
}