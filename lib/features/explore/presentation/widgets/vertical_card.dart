import 'package:flutter/cupertino.dart';
import 'package:kim/core/avatar.dart';
import 'package:kim/features/explore/presentation/widgets/brand.dart';
import 'package:kim/utils/constants.dart';

class VerticalCard extends StatelessWidget {
  const VerticalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      color: Constants.Iconbg,
      padding: EdgeInsets.all(Constants.height10/2),
      child:  Column(
        children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Lide"),
                Icon(CupertinoIcons.forward),
              ],  
                       ),
           ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AvatarImg(),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("data"),
                  Container(
                  
                  padding: EdgeInsets.all(10),
                    decoration:  BoxDecoration(
                      color: Constants.bottom,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        Text("vlfdmvlkdfnmvvnkdmv lsba sdvbxc hebffn fvhfbdvfbvjdhxbhjsdbc "),
                        Row(
                          children: [
                            Brand(brand: "gg", brandText: "fff")
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),

        ],
      ),
    );
  }
}