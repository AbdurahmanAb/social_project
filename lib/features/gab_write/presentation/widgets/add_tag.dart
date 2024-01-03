import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/features/gab_write/presentation/widgets/input_poll.dart';
import 'package:kim/features/gab_write/presentation/widgets/tag_button.dart';
import 'package:kim/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:radio_group_v2/radio_group_v2.dart';

class Addtag extends StatefulWidget {
  @override
  _AddtagState createState() => _AddtagState();
}

class _AddtagState extends State<Addtag> {
  RadioGroupController myController = RadioGroupController();
  final GlobalKey<RadioGroupState> radioGroupKey1 =
      GlobalKey<RadioGroupState>();

  late TextEditingController _textEditingController;
  bool disabled = true;
  bool isStartWriting = false;
  String tag = "";
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  void enableButton() {
    setState(() {
      disabled = false;
    });
  }

  check(value) {
    if (value.length > 0) {
      isStartWriting = true;
    } else {
      isStartWriting = false;
    }
  }

  void onRadioGroupChanged(value) {
    setState(() {
      disabled = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 52, 52, 54),
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          padding: EdgeInsets.symmetric(
              vertical: 30, horizontal: Constants.height10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  enableButton();
                },
                child: TextField(
                  controller: _textEditingController,
                  onChanged: (value) {
                    setState(() {
                      check(value);
                      tag = value;
                    });
                  },
                  decoration: const InputDecoration.collapsed(
                    hintText: "@ 브랜드 입력 (최대 5개)",
                    hintStyle: TextStyle(
                      color: Color(0xFF7C7C80),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Constants.height20,
              ),
              isStartWriting
                  ? Row(
                      children: [
                        Container(
                          //  width: 94,
                          height: 31,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.black.withOpacity(0.500000003224),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Row(
                            // mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                tag,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  height: 0.11,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Transform(
                                  transform: Matrix4.translationValues(0, 0, 0),
                                  child: const Icon(
                                    Icons.close,
                                    size: 17,
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        //   Container(
                        //   //  width: 94,
                        //   height: 31,
                        //   padding:
                        //       const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                        //   clipBehavior: Clip.antiAlias,
                        //   decoration: ShapeDecoration(
                        //     color: Colors.black.withOpacity(0.500000003224),
                        //     shape: RoundedRectangleBorder(
                        //       side: BorderSide(width: 1, color: Colors.white),
                        //       borderRadius: BorderRadius.circular(20),
                        //     ),
                        //   ),
                        //   child: Row(
                        //    // mainAxisSize: MainAxisSize.min,
                        //     mainAxisAlignment: MainAxisAlignment.start,
                        //     crossAxisAlignment: CrossAxisAlignment.center,
                        //     children: [
                        //       Text(
                        //         '@ 나이키',
                        //         textAlign: TextAlign.center,
                        //         style: TextStyle(
                        //           color: Colors.white,
                        //           fontSize: 14,

                        //           fontWeight: FontWeight.w700,
                        //           height: 0.11,
                        //         ),
                        //       ),
                        //       const SizedBox(width: 8),
                        //       Transform(
                        //         transform: Matrix4.translationValues(0, 0, 0),
                        //         child: Icon(Icons.close,size: 17,)),

                        //     ],
                        //   ),
                        // ),
                        // SizedBox(
                        //   width: Constants.height10,
                        // ),
                      ],
                    )
                  : const Column(
                      children: [
                        Text(
                          "사용자의 브랜드의 언급량에 따라 ",
                          style: TextStyle(
                            color: Color(0xFF7C7C80),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "서브 브랜드 채널이 생성됩니다.",
                          style: TextStyle(
                            color: Color(0xFF7C7C80),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
              const SizedBox(
                height: 30,
              ),
              Constants.screen_width <= 340
                  ? const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TagButton(colors: Constants.white, txt: "취 소"),
                        SizedBox(
                          height: 10,
                        ),
                        TagButton(colors: Constants.appColor, txt: "확 인")
                      ],
                    )
                  : const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagButton(colors: Constants.white, txt: "취 소"),
                        SizedBox(
                          width: 10,
                        ),
                        TagButton(colors: Constants.appColor, txt: "확 인")
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }
}

class ToggleAddTag {
  static void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      constraints: BoxConstraints(
        minHeight: 0.8,
        maxHeight: Constants.screen_height * 0.8,
      ),
      builder: (BuildContext context) {
        return Addtag();
      },
    );
  }
}
