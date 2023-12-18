import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/core/topbar.dart';
import 'package:kim/features/explore/presentation/widgets/feed_search.dart';
import 'package:kim/features/explore/presentation/widgets/top_cards.dart';

class GabFeed extends StatefulWidget {
  const GabFeed({super.key});

  @override
  State<GabFeed> createState() => _GabFeedState();
}

class _GabFeedState extends State<GabFeed> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
        children: [TopBar(),
        FeedSearch(),
        TopCard(),
        

        
        
        ],
      )),
    );
  }
}
