import 'package:flutter/cupertino.dart';

class GroupAvatar extends StatelessWidget {
  const GroupAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 63,
      height: 85,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(137.78),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 6,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 63,
              height: 63,
              decoration: const BoxDecoration(color: Color(0xFF2C2C2E)),
            ),
          ),
          Positioned(
            left: 9.50,
            top: 5,
            child: Container(
              width: 30,
              height: 30,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(137.78),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x0C000000),
                    blurRadius: 6,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:AssetImage("assets/avatar/avatar2.jpg"),
                         //   NetworkImage("https://via.placeholder.com/30x30"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 37.50,
            top: 24,
            child: Container(
              width: 22,
              height: 22,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(137.78),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x0C000000),
                    blurRadius: 6,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 22,
                    height: 22,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:
                           AssetImage("assets/avatar/avatar4.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 18.50,
            top: 38,
            child: Container(
              width: 18,
              height: 18,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(137.78),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x0C000000),
                    blurRadius: 6,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 18,
                    height: 18,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:AssetImage("assets/avatar/avatar.jpg"),
               
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
