import 'package:flutter/cupertino.dart';
import 'package:kim/utils/constants.dart';

class SocialRow extends StatelessWidget {
  final Widget content1;
  final Widget content2;
  final double? gap;

  const SocialRow({required this.content1,required this.content2, super.key, this.gap});


  @override
  Widget build(BuildContext context) {
    return Row(
     
      children: [
content1,
SizedBox(width:gap!=null?gap: Constants.height10,),
content2
      ],
    );
  }
 
}