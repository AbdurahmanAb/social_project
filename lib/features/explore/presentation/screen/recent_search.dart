import 'package:flutter/material.dart';
import 'package:kim/features/explore/presentation/widgets/vertical_card.dart';

class RecentPage extends StatefulWidget {
  const RecentPage({super.key});

  @override
  State<RecentPage> createState() => _RecentPageState();
}

class _RecentPageState extends State<RecentPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
Text("data"),
Text("datastrag"),
            ],
          )
,             Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
Text("data"),
Text("datastrag")]
),

Text("Logo ogog"),
VerticalCard()

        ],
      ),
    );
  }
}