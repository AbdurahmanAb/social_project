import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../features/explore/presentation/widgets/brand.dart';
import '../utils/constants.dart';

class BrandPost extends StatelessWidget {
  const BrandPost({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
            children: [
             Brand(brand: "assets/avatar/nike.png", brandText: "@나이키", brandText2: "#조던",),
              const Spacer(),
              const Text("24분 전"),
              SizedBox(
                width: Constants.height10,
              ),
              const Icon(Icons.more_horiz)
            ],
          );
  }
}