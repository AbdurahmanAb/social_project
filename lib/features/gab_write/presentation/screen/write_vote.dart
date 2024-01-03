import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:kim/core/MyBottomSheet.dart';
import 'package:kim/core/ui/custom_alert.dart';
import 'package:kim/features/gab_write/presentation/widgets/add_poll.dart';
import 'package:kim/features/gab_write/presentation/widgets/add_tag.dart';
import 'package:kim/utils/constants.dart';

class WriteVote extends StatefulWidget {
  const WriteVote({super.key});

  @override
  State<WriteVote> createState() => _WriteVoteState();
}

class _WriteVoteState extends State<WriteVote> {
  bool hastext = false;
  String titleValue = "";
  String textValue = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Dialog.fullscreen(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.maxFinite,
                height: Constants.screen_height - Constants.height10,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Constants.Iconbg,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Text("취소")),
                          Text("새로운 피드"),
                          GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => CustomAlert());
                              },
                              child: Text(
                                "등록",
                                style: TextStyle(
                                    color: textValue.length > 0 ||
                                            titleValue.length > 0
                                        ? Constants.appColor
                                        : Constants.disabled),
                              ))
                        ]),
                    const Divider(),
                    SizedBox(height: Constants.height15),
                    const Row(
                      children: [
                        Text("갭 작성 위치 : @현대・#제네시스"),
                      ],
                    ),
                    SizedBox(height: Constants.height10),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            TextField(
                              maxLines: null,
                              cursorColor: Colors.blue,
                              onChanged: (value) {
                                setState(() {
                                  titleValue = value;
                                });
                              },
                              style: TextStyle(
                                  fontSize: Constants.lgFont,
                                  fontWeight: FontWeight.bold),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: " | 제목을 입력하세요. ,",
                                hintStyle: TextStyle(
                                  color: Color(0xFF7C7C80),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              keyboardType: TextInputType.multiline,
                              autofocus: true,
                            ),
                            TextField(
                              onChanged: (value) {
                                setState(() {
                                  textValue = value;
                                });
                              },
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w300),
                              decoration: InputDecoration.collapsed(
                                hintText:
                                    " 내용을 입력해주세요. \n - 서로를 존중하고 누구나 기분 좋게 참여할 수 있는 커뮤니티가 될 수 있도록 함께 노력해주세요!- 토픽에 맞지 않는 글로 판단되어 다른 유저로부터 일정수 이상의 신고를 받는 경우 글리 자동으로 숨김처리 될 수 있습니다.- 불법촬영물등을 업로드하거나 유통으로 간주할 수 있는 게시물을 작성하는 경우 게시물은 숨김조치되며 영구적으로 이용제한 될 수 있습니다.",
                                hintStyle: TextStyle(
                                  color: Color(0xFF7C7C80),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              keyboardType: TextInputType.multiline,
                              maxLines: 10,
                              autofocus: true,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(Constants.height15),
              color: Constants.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            MyBottomSheet.showBottomSheet(
                                context,
                                "카메라",
                                "assets/icons/icon_modify.png",
                                "assets/icons/icon__picture.png",
                                "사진 앨범",
                                "닫기");
                          },
                          child: Image.asset("assets/icons/icon_picture.png")),
                      SizedBox(
                        width: Constants.height10,
                      ),
                      GestureDetector(
                          onTap: () {
                            Addpoll.showAddPoll(context);
                          },
                          child: Image.asset("assets/icons/icon_list.png")),
                      SizedBox(
                        width: Constants.height10,
                      ),
                      GestureDetector(
                          child: Image.asset("assets/icons/icon_tag.png")),
                      SizedBox(
                        width: Constants.height10,
                      ),
                      GestureDetector(
                          onTap: () {
                            ToggleAddTag.showBottomSheet(context);
                          },
                          child: Image.asset(
                              "assets/icons/icon_brand_mention.png")),
                      SizedBox(
                        width: Constants.height10,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset("assets/icons/checkbox.png"),
                      SizedBox(
                        width: Constants.height10,
                      ),
                      Text("공지로 고정")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



























// class WriteVote {
//   static void ShowWrite(context) {
//     showGeneralDialog(
//         context: context,
//         barrierDismissible: true,
//         barrierLabel:
//             MaterialLocalizations.of(context).modalBarrierDismissLabel,
//         barrierColor: Colors.black45,
//         transitionDuration: const Duration(milliseconds: 200),
//         pageBuilder: (BuildContext buildContext, Animation animation,
//             Animation secondaryAnimation) {
//           return Center(
//             child: 
//           );
//         });
//   }
// }
