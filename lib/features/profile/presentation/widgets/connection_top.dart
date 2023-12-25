import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/core/text/MidText.dart';
import 'package:kim/utils/constants.dart';

class ConnectionTop extends StatefulWidget {
  const ConnectionTop({super.key});

  @override
  State<ConnectionTop> createState() => _ConnectionTopState();
}

class _ConnectionTopState extends State<ConnectionTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.all(Constants.height10),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Text( "이번주",style: TextStyle(fontWeight: FontWeight.w700,),),
              Icon(Icons.arrow_drop_down),
              MidText(text: "의 나와의 관계"),
            ],
          ),
          Icon(CupertinoIcons.forward)
        ],
      ),
    );
  }
}
