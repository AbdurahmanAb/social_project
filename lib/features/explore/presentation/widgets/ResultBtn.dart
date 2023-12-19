import 'package:flutter/cupertino.dart';
import 'package:kim/utils/constants.dart';

class ResultBtn extends StatelessWidget {
  final String text;
  final bool disabled;
  const ResultBtn({required this.text,  required this.disabled, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     
      decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
 color:disabled?Constants.disabled :Constants.appColor,
      ),
      padding: EdgeInsets.all(8),
       child: Text(text, style: TextStyle(color: Constants.black, fontWeight: FontWeight.bold),),
    );
  }
}