import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/features/explore/presentation/screen/emoji_page.dart';
import 'package:kim/features/explore/presentation/screen/pageOne.dart';
import 'package:kim/features/explore/presentation/screen/result_page.dart';
import 'package:kim/utils/constants.dart';

class SearchMenu extends StatefulWidget {
  const SearchMenu({Key? key}) : super(key: key);

  @override
  State<SearchMenu> createState() => _SearchMenuState();
}

class _SearchMenuState extends State<SearchMenu>
    with TickerProviderStateMixin {


  @override
  void initState() {
    super.initState();
 
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.black,
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       
        children: [
          Container(
            width: 75,
            padding: EdgeInsets.all(8.0),
         
            child:  Center(
              child: Text(
                  "gab",
                  style: TextStyle(
                    color:  Constants.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
              ),
            )
          ),
          Container(
                 width: 75,
            padding: EdgeInsets.all(8.0),
            child: Center(          
              child: Text("댓글", style: TextStyle(
                    color:  Constants.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),),
            ),
          ),
          Container(
                 width: 75,
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text("라운지", style: TextStyle(
                    color:  Constants.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),),
            ),
          ), Container(
                 width: 75,
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text("사람", style: TextStyle(
                    color:  Constants.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),),
            ),
          ),
        ],
        
      ),
    );
  }
}