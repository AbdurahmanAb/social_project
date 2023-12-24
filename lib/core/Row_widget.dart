import 'package:flutter/cupertino.dart';

class RowWidget extends StatelessWidget {
  final Widget content1;
  final Widget content2;
  final MainAxisAlignment alignment;
  const RowWidget({required this.content1,required this.content2, super.key, required this.alignment});


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      children: [
content1,
content2
      ],
    );
  }
 
}