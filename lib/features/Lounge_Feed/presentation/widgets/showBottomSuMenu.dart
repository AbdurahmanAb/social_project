import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/core/text/text_styles.dart';
import 'package:kim/features/feed/presentation/widgets/Tags.dart';

import '../../../../core/ui/app_button.dart';
import '../../../../utils/constants.dart';

//SHOW BOTTOMBAR ON BOTTOMSHEET

class Trigger extends StatefulWidget {
  const Trigger({super.key});

  @override
  State<Trigger> createState() => _TriggerState();
}

class _TriggerState extends State<Trigger> {
  bool show1 = false;
  bool show2 = false;
  void toggleButton1() {
    setState(() {
      show1 = !show1;
    });
  }

  void ToggleBtn2() {
    setState(() {
      show2 = !show2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Constants.height20),
      height: show1 & show2
          ? Constants.screen_height * 0.4
          : show1 || show2
              ? Constants.screen_height * 0.35
              : Constants.screen_height * 0.3,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25), topLeft: Radius.circular(25)),
          color: Constants.bottom),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset("assets/Lounge/text_icon(1).png"),
              SizedBox(
                width: Constants.height10,
              ),
             Text("최신순", style: TextStyles.bottomSheetstyle,),
            ],
          ),
          InkWell(
            onTap: () {
              toggleButton1();
            },
            child: Row(
              children: [
                Image.asset("assets/Lounge/text_icon.png"),
                SizedBox(
                  width: Constants.height10,
                ),
                 Text("인기순",style: TextStyles.bottomSheetstyle,),
              ],
            ),
          ),
          show1
              ?  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BottomTags(context,
                       "이번 주",
                      
                    ),
                    BottomTags(context,
                       "이번 달",
                      
                    ),
                    BottomTags(context,
                       "올 해",
                      
                    )
                  ],
                )
              : const SizedBox(
                  height: 0,
                  width: 0,
                ),
          InkWell(
            onTap: () {
              ToggleBtn2();
            },
            child: Row(
              children: [
                Image.asset("assets/Lounge/text_icon(2).png"),
                SizedBox(
                  width: Constants.height10,
                ),
                Text("갭스타",style: TextStyles.bottomSheetstyle,),
              ],
            ),
          ),
          show2
              ?  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   BottomTags(
                    context, "이번 주",
                
                    ),
                   BottomTags(
                      context, "이번 달",
                
                    ),
                   BottomTags(
                    context,
                       "올 해",
                
                    )
                  ],
                )
              : SizedBox(
                  height: Constants.height15,
                  width: 0,
                ),
          AppButton(text: "닫기")
        ],
      ),
    );
  }
}

Widget BottomTags(BuildContext context,String name) {
    return Container(
      width: 80,
      padding: EdgeInsets.only(top: 3,bottom: 4, right: 9, left: 8),
      decoration: BoxDecoration(
       // border:Border.all(width: 1, color: Constants.white),
  borderRadius: BorderRadius.circular(12),
     color: Constants.chipColor
      ),
    
child: Center(child: Text(
    name,
    textAlign: TextAlign.center,
    style: TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w700,
      
    ),
)),
    );
    
    
   // Chip( label:  Text(name) ,color:MaterialStatePropertyAll(color),shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)) , );
  }

class ShowBottomSubmenu {
  static void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const Trigger();
      },
    );
  }
}
