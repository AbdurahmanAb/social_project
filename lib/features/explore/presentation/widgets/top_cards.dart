
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kim/features/explore/presentation/widgets/brand.dart';

import 'package:kim/utils/constants.dart';

class TopCard extends StatefulWidget {
  final String brand;
  final String brandText;
  final String text;
  const TopCard(
      {required this.brand,
      required this.brandText,
      required this.text,
      super.key});

  @override
  State<TopCard> createState() => _TopCardState();
}

class _TopCardState extends State<TopCard> {
  PageController _PageController = PageController(viewportFraction: .85);
  var _currentPage = 0.0;
  @override
  void initState() {
    super.initState();
    _PageController.addListener(() {
      _currentPage = _PageController.page!;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _PageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
   width: double.maxFinite,
      color: Constants.mainColor,
      padding: EdgeInsets.all(Constants.height10),
      child: Column(
        children: [
          
          LayoutBuilder(
            builder: (context,BoxConstraints  constraints) {
              return Container(
                height: Constants.screen_height * 0.2,
                child: PageView.builder(
                  controller: _PageController,
                  itemCount: 4,
                  
                  itemBuilder: (context, index) {
                    return Container(
                      
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Constants.bottom),
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Brand(brand:widget.brand ,brandText: "@라코스테"),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(widget.text)
                        ],
                      ),
                    );
                  },
                ),
              );
            }
          ),
         


        ],
      ),
    );
  }
}
