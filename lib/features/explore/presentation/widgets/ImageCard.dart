import 'package:flutter/cupertino.dart';
import 'package:kim/features/explore/presentation/widgets/brand.dart';
import 'package:kim/utils/constants.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Constants.Iconbg,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("👀 주목받는 피드"),
            
            Icon(CupertinoIcons.forward)],
          ),
          SizedBox(height: 10,),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Constants.bottom,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Text("LACOSTE(라코스테)는 1920년대 프랑스의 테니스 스타인 장 르네 라코스테(Jean Rene Lacoste)에 의해 만들어진 브랜드입니다."),
                  SizedBox(
                height: Constants.height15,
              ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset("assets/avatar/post1.jpg"),
                    ),
                    SizedBox(height: 10,),
                    Brand(brand: "assets/avatar/nike.png", brandText:"@나이키", brandText2: "#Air Jordan",)

                  ],
                ))
            ],
          )
        ],
      ),
    );
  }
}