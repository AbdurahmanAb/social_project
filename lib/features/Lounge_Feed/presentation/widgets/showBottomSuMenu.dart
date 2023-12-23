import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/features/feed/presentation/widgets/Tags.dart';

import '../../../../core/ui/Appbutton.dart';
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
  void toggleButtom() {
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
              const Text("최신순"),
            ],
          ),
          GestureDetector(
            onTap: () {
              toggleButtom();
            },
            child: Row(
              children: [
                Image.asset("assets/Lounge/text_icon.png"),
                SizedBox(
                  width: Constants.height10,
                ),
                const Text("인기순"),
              ],
            ),
          ),
          show1
              ? const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Tags(
                      name: "이번 주",
                      color: Constants.chipColor,
                    ),
                    Tags(
                      name: "이번 달",
                      color: Constants.chipColor,
                    ),
                    Tags(
                      name: "올 해",
                      color: Constants.chipColor,
                    )
                  ],
                )
              : const SizedBox(
                  height: 0,
                  width: 0,
                ),
          GestureDetector(
            onTap: () {
              ToggleBtn2();
            },
            child: Row(
              children: [
                Image.asset("assets/Lounge/text_icon(2).png"),
                SizedBox(
                  width: Constants.height10,
                ),
                const Text("갭스타"),
              ],
            ),
          ),
          show2
              ? const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Tags(
                      name: "이번 주",
                      color: Constants.chipColor,
                    ),
                    Tags(
                      name: "이번 달",
                      color: Constants.chipColor,
                    ),
                    Tags(
                      name: "올 해",
                      color: Constants.chipColor,
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
