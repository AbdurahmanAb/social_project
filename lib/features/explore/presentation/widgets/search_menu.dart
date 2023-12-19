import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/utils/constants.dart';

class SearchMenu extends StatefulWidget {
  const SearchMenu({Key? key}) : super(key: key);

  @override
  State<SearchMenu> createState() => _SearchMenuState();
}

class _SearchMenuState extends State<SearchMenu>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      dividerColor: Colors.transparent,
unselectedLabelColor: Colors.amber,
      indicator: BoxDecoration(
        color: Constants.appColor2,
        borderRadius: BorderRadius.circular(12)
      ),
    onTap: (value) {
      setState(() {
        _tabController.index =value;
      });
    },
     overlayColor: MaterialStateProperty.all(Colors.transparent),
      tabs: [
        Container(
          width: 75,
          padding: EdgeInsets.all(8.0),
       
          child:  Center(
            child: Text(
                "gab",
                style: TextStyle(
                  color: _tabController.index==0? Constants.black:Constants.white,
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
            child: Text("two", style: TextStyle(
                  color: _tabController.index==1? Constants.black:Constants.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),),
          ),
        ),
        Container(
               width: 75,
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Text("three", style: TextStyle(
                  color: _tabController.index==2? Constants.black:Constants.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),),
          ),
        ),
      ],
    );
  }
}