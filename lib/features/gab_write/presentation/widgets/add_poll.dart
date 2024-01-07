import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:collection/collection.dart';
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



  void removePoll(int index) {
    setState(() {
      pollList.removeAt(index);
    });
  }

  void addNewPoll() {
    if (pollList.length < 12) {
      setState(() {
        pollList.add("new poll");
      
      });
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
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

  List<String> pollList = [
    " 항목 싱가포르",
    " 항목 싱가포르",
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        child: AlertDialog(
          actionsAlignment: MainAxisAlignment.start,
          actions: [
            
            SizedBox(height: Constants.height20,),
      if(pollList.length >= 4)  Row(
          children: [
            Text(
                '*투표는 글 등록 이후 수정이 불가능합니다.',
                style: TextStyle(
            color: Color(0xFFFF0089),
            fontSize: 14,
            fontFamily: 'KoPubDotum_Pro',
            fontWeight: FontWeight.w500,
          
                ),
            ),
          ],
        )],
          
            contentPadding: const EdgeInsets.all(13),
            backgroundColor: Constants.Iconbg,
            surfaceTintColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFF7C7C80)),
              borderRadius: BorderRadius.circular(10),
            ),
            insetPadding: EdgeInsets.all(Constants.height15),
            content: SingleChildScrollView(
              child: Container(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        flex: 3,
                        child: const TextField(
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
        
                  Column(
                    children: pollList
                        .mapIndexed((index, e) => Column(
                              children: [
                                index <= 1
                                    ? Column(
                                        children: [
                                          InputPoll(
                                            text: "항목 싱가포르",
                                            onChanged: (value) => () {},
                                            controller: controller,
                                          ),
                                          SizedBox(
                                            height: Constants.height15,
                                          ),
                                        ],
                                      )
                                    : Row(
                                        children: [
                                          SizedBox(
                                            width: Constants.height20*12,
                                            child: InputPoll(
                                              text: "항목 싱가포르",
                                              onChanged: (value) => () {},
                                              controller: controller,
                                            ),
                                          ),
                                          SizedBox(
                                            width: Constants.height15,
                                          ),
                                          IconButton(
                                            highlightColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            icon: const Icon(
                                                CupertinoIcons.minus_circle),
                                            onPressed: () {
                                              removePoll(index);
                                            },
                                          ),
                                        ],
                                      ),
                          
        
                                SizedBox(
                                  height: Constants.height15,
                                ),
                              ],
                            ))
                        .toList(),
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
                      const Text("중복 투표 허용"),
                      Transform.scale(
                        scale: .7,
                        child: Switch(
                            activeColor:Constants.black ,
                            activeTrackColor:  Constants.appColor,
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            value: switchOn,
                            inactiveThumbColor: Colors.grey,
           
                            inactiveTrackColor: Constants.black,

                            onChanged: (value) {
                              SwitchValue(value);
                            }),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("투표 기간 선택"),
                      GestureDetector(
                        onTap: () {
                          BottomradionSheet.showBottomSheet(context, value);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            result == null ? Text("$value일") : Text("$result일"),
                            const Icon(Icons.arrow_drop_down)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )),
            )),
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
          return const PollWidget();
        });
  }
}
