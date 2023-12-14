import 'package:flutter/cupertino.dart';

class RowWidget extends StatelessWidget {
  final Widget content1;
  final Widget content2;
  const RowWidget({required this.content1,required this.content2, super.key});


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
content1,
content2
      ],
    );
  }
}