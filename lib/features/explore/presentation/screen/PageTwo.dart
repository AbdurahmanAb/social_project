import 'package:flutter/cupertino.dart';
import 'package:kim/core/avatar.dart';
import 'package:kim/features/explore/presentation/widgets/brand.dart';
import 'package:kim/utils/constants.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Constants.height20),
 child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
   
      Brand(brand: "assets/avatar/nike.png", brandText: "po", brandText2: "po"),
      Text("fjjjgggggggggggggg"),
      Text("posdfhbzxczxbvcczxczx ikkgujvycfrtgrxsw rhfcwxtgsfxrf g nfdtgdddddddddddddf"),
      Container(
        decoration: BoxDecoration(
color: Constants.bottom,
borderRadius: BorderRadius.circular(11)
        ),
        padding: EdgeInsets.all(Constants.height20),
        child: Column(
          children: [
Row(
  children: [AvatarImg(height: 25,),
  SizedBox(height: 10,),
  Text("Posataa ")
  ],
)

          ],
        ),
      )
   
  ],
 ),
    );
  }
}