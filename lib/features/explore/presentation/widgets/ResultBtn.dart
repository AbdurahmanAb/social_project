import 'package:flutter/cupertino.dart';
import 'package:kim/utils/constants.dart';

class ResultBtn extends StatelessWidget {
  final bool disabled;
  final Function? onTab;
  ResultBtn({required this.disabled, super.key, this.onTab});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: disabled ? Constants.disabled : Constants.appColor,
        ),
        padding: EdgeInsets.all(8),
        child: Text(
          disabled ? "팔로잉" : "팔로우",
          style: TextStyle(color: Constants.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
