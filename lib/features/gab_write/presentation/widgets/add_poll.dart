import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kim/core/report_bottom.dart';
import 'package:kim/core/ui/app_button.dart';
import 'package:kim/features/gab_write/presentation/widgets/bottom_sheet_radio.dart';
import 'package:kim/features/gab_write/presentation/widgets/input_poll.dart';
import 'package:kim/utils/constants.dart';

class PollWidget extends StatefulWidget {
  const PollWidget({super.key});

  @override
  State<PollWidget> createState() => _PollWidgetState();
}

class _PollWidgetState extends State<PollWidget> {

  final TextEditingController controller = TextEditingController();
  List polls = ["항목 입력"];
  bool haValue = false;

  void updatePoll(int index, String value) {
    setState(() {
      
   haValue = controller.text.isNotEmpty;
      pollList[index] = value;
    });
  }

  void removePoll(int index) {
    setState(() {
      pollList.removeAt(index);
    });
  }

  void addNewPoll() {
    if (pollList.length < 12) {
      setState(() {
        pollList.add("항목 입력");
      });
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              insetPadding: EdgeInsets.zero,
              content: Text("you can't add more"));
        },
      );
    }
  }

  var result = Get.arguments;
  int value = 3;
  bool switchOn = false;
  SwitchValue(value) {
    setState(() {
      switchOn = value;
    });
  }

  List<String> pollList = [" 항목", "싱가포르"];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        child: AlertDialog(
            contentPadding: EdgeInsets.all(13),
            backgroundColor: Constants.Iconbg,
            surfaceTintColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFF7C7C80)),
              borderRadius: BorderRadius.circular(10),
            ),
            insetPadding: EdgeInsets.all(Constants.height15),
            content: Container(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                          hintText: "투표 제목을 입력하세요.",
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    //   Text('투표 제목을 입력하세요.'),
                    Image.asset("assets/icons/button_closed.png")
                  ],
                ),
                SizedBox(
                  height: Constants.height15,
                ),
                // Column(
                //   children: [
                //     InputPoll(
                //       text: "text",
                //       onChanged: (value) => {},
                //     ),
                //     InputPoll(
                //       text: "text",
                //       onChanged: (value) => {},
                //     ),
                //     InputPoll(
                //       text: "text",
                //       onChanged: (value) => {},
                //     )
                //   ],
                // ),
                SizedBox(
                  width: 340,
                  height: pollList.length * 45 + 38,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                      height: 15,
                    ),
                    itemCount: pollList.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Expanded(
                            child: InputPoll(
                              controller: controller,
                              backgroundColor: haValue? index == 0 || index == 1
                                  ? Constants.white
                                  : null:null,
                              text: pollList[index],
                              onChanged: (value) {
                                updatePoll(index, value);
                                
                              },
                            ),
                          ),
                          index != 0 && index != 1
                              ? IconButton(
                                highlightColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                  icon: Icon(CupertinoIcons.minus_circle),
                                  onPressed: () {
                                    removePoll(index);
                                  },
                                )
                              : SizedBox.shrink(),
                        ],
                      );
                    },
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    addNewPoll();
                  },
                  child: AppButton(
                    text: "+ 추가하기",
                    disabled: true,
                  ),
                ),
                SizedBox(
                  height: Constants.height15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("중복 투표 허용"),
                    Transform.scale(
                      scale: .7,
                      child: Switch(
                          activeColor: Constants.disabled,
                          activeTrackColor: Constants.black,
                          materialTapTargetSize: MaterialTapTargetSize.padded,
                          value: switchOn,
                          onChanged: (value) {
                            SwitchValue(value);
                          }),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("투표 기간 선택"),
                    GestureDetector(
                      onTap: () {
                        BottomradionSheet.showBottomSheet(context, value);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          result == null ? Text("$value일") : Text("$result일"),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    )
                  ],
                )
              ],
            ))),
      );
    });
  }
}

class Addpoll {
  static void showAddPoll(context) {
    showDialog(
        context: context,
        builder: (
          BuildContext context,
        ) {
          return PollWidget();
        });
  }
}
