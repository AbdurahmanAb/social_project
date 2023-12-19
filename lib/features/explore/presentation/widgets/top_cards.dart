import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/features/explore/presentation/widgets/brand.dart';
import 'package:kim/features/feed/presentation/widgets/Tags.dart';
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
      height: 200,
   width: double.maxFinite,
      color: Constants.mainColor,
      padding: EdgeInsets.all(Constants.height10),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "새로 열린 브랜드 라운지",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Icon(CupertinoIcons.forward)
            ],
          ),
          SizedBox(
            height: Constants.height10,
          ),
          Container(
            height: 149,
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
                    children: [
                    Brand(brand: "Lacoste",brandText: "p"),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(widget.text)
                    ],
                  ),
                );
              },
            ),
          ),
         


        ],
      ),
    );
  }
}
