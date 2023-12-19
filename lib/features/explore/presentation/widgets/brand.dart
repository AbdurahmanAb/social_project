import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';

class Brand extends StatelessWidget {
  final String brand;
  final String brandText;
  final String brandText2;
  const Brand(
      {required this.brand,
      required this.brandText,
      this.brandText2 = "",
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Chip(
          label: Text(brand),
          color: const MaterialStatePropertyAll(
            Constants.white,
          ),
          labelStyle: const TextStyle(
              color: Constants.black, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(brandText),
        const SizedBox(
          width: 5,
        ),
        brandText2 != "" ? Text(brandText2, style: TextStyle(
          color: Constants.appColor
        ),) : SizedBox.shrink(),
      ],
    );
  }
}
