import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/features/profile/presentation/widgets/profile_top_bar.dart';

class GabInsight extends StatelessWidget {
  const GabInsight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [ProfileTopBar(text: "Gab Insights")],)),
    );
  }
}