import 'package:flutter/cupertino.dart';

class Socials extends StatelessWidget {
  const Socials({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:AssetImage("assets/icons/appicon.png") ,  // NetworkImage("https://via.placeholder.com/60x60"),
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
        ),
     
     Text("data", style:TextStyle(fontSize: 12),)
      ],
    );
  }
}
