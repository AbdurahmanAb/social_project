import 'package:flutter/cupertino.dart';
import 'package:kim/features/explore/presentation/widgets/brand.dart';
import 'package:kim/utils/constants.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: Constants.Iconbg,
      child: Column(
        children: [
          Row(
            children: [Text("data")],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Constants.bottom,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Text("refjklefmnsdfnsdfkdlfjdljk bgdhhdfg vdfjkbgdsfugbdk sdjkgdfb"),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset("assets/avatar/post1.jpg"),
                    ),
                    SizedBox(height: 10,),
                    Brand(brand: "yooo", brandText:"looo", brandText2: "@brand2",)

                  ],
                ))
            ],
          )
        ],
      ),
    );
  }
}