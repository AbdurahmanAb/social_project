import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchMenu extends StatelessWidget {
  const SearchMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Chip(label: const Text("Gab"))
      ],
    );
  }
}