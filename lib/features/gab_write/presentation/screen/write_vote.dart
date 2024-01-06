import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'package:kim/core/MyBottomSheet.dart';
import 'package:kim/core/text/text_styles.dart';
import 'package:kim/core/ui/custom_alert.dart';
import 'package:kim/features/gab_write/presentation/widgets/add_poll.dart';
import 'package:kim/features/gab_write/presentation/widgets/add_tag.dart';
import 'package:kim/features/gab_write/presentation/widgets/image_picker.dart';
import 'package:kim/utils/constants.dart';

import '../../../../core/ui/app_button.dart';

class WriteVote extends StatefulWidget {
  const WriteVote({super.key});

  @override
  State<WriteVote> createState() => _WriteVoteState();
}

class _WriteVoteState extends State<WriteVote> {
  bool checked = false;
  String titleValue = "";
  String textValue = "";

  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];

  void selectImages() async {
    Get.back();
    final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
    }
    print("Image List Length:" + imageFileList!.length.toString());
    setState(() {});
  }

  void accessImage() async {
//  final XFile? image= await imagePicker. ;
  }
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
                              child: const Text("취소")),
                          const Text("새로운 피드"),
                          GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => const CustomAlert());
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
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w300),
                              decoration: const InputDecoration(
                                isDense: true,
                                border: InputBorder.none,
                                hintText:
                                    " 내용을 입력해주세요. \n - 서로를 존중하고 누구나 기분 좋게 참여할 수 있는 커뮤니티가 될 수 있도록 함께 노력해주세요!- 토픽에 맞지 않는 글로 판단되어 다른 유저로부터 일정수 이상의 신고를 받는 경우 글리 자동으로 숨김처리 될 수 있습니다.- 불법촬영물등을 업로드하거나 유통으로 간주할 수 있는 게시물을 작성하는 경우 게시물은 숨김조치되며 영구적으로 이용제한 될 수 있습니다.",
                                hintStyle: TextStyle(
                                  color: Color(0xFF7C7C80),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              keyboardType: TextInputType.multiline,
                              maxLines: 8,
                              autofocus: true,
                            ),
                            imageFileList!.length > 0
                                ? SingleChildScrollView(
                                    child: ListView.separated(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemBuilder: (context, index) {
                                          return Container(
                                              //  height: 320,
                                              child: Stack(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                child: Image.file(
                                                  fit: BoxFit.cover,
                                                  File(imageFileList![index]
                                                      .path),
                                                ),
                                              ),
                                              index == 0
                                                  ? Positioned(
                                                      top: 10,
                                                      left: 15,
                                                      child: Container(
                                                        width: 50,
                                                        padding: EdgeInsets.all(
                                                            Constants.height10 /
                                                                2),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25),
                                                            color: Constants
                                                                .appColor),
                                                        child: Center(
                                                            child: Text(
                                                          "대표",
                                                          style:
                                                              TextStyles.style3,
                                                        )),
                                                      ))
                                                  : SizedBox.shrink(),
                                              Positioned(
                                                  right: 18,
                                                  top: 20,
                                                  child: InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          imageFileList!
                                                              .removeAt(index);
                                                        });
                                                      },
                                                      child: Image.asset(
                                                          "assets/icons/button_closed.png")))
                                            ],
                                          ));
                                        },
                                        separatorBuilder: (context, index) =>
                                            const SizedBox(
                                              height: 10,
                                            ),
                                        itemCount: imageFileList!.length),
                                  )
                                : const SizedBox.shrink(),
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
                            ImageBottomSheet.showBottomSheet(
                                context,
                                ImageBottomSheet(
                                  text1: "카메라",
                                  icon1: "assets/icons/icon_modify.png",
                                  icon2: "assets/icons/icon_picture.png",
                                  text2: "사진 앨범",
                                  btnTxt: "닫기",
                                  onTap1: () => accessImage(),
                                  onTap2: () => selectImages(),
                                ));
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
                  InkWell(
                    onTap: () {
                      setState(() {
                        checked = !checked;
                      });
                    },
                    child: Row(
                      children: [
                       checked ?Image.asset("assets/icons/checked.png"): Image.asset("assets/icons/checkbox.png"),
                        SizedBox(
                          width: Constants.height10,
                        ),
                        const Text("공지로 고정")
                      ],
                    ),
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

class ImageBottomSheet extends StatelessWidget {
  final String text1;
  final String icon1;
  final String icon2;
  final String text2;
  final String btnTxt;
  final Function? onTap1;
  final Function? onTap2;
  final String? text3;
  final String? icon3;
  const ImageBottomSheet(
      {super.key,
      required this.text1,
      required this.icon1,
      required this.icon2,
      required this.text2,
      required this.btnTxt,
      this.onTap1,
      this.onTap2,
      this.text3,
      this.icon3});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Constants.height20),
      height: text3 != null ? 300 : 170,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25), topLeft: Radius.circular(25)),
          color: Constants.bottom),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              //the onTap function that accept as argument
              onTap1!();
            },
            child: Row(
              children: [
                Image.asset(icon1),
                SizedBox(
                  width: Constants.height10,
                ),
                Text(text1),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              onTap2!();
            },
            child: Row(
              children: [
                Image.asset(icon2),
                SizedBox(
                  width: Constants.height10,
                ),
                Text(text2),
              ],
            ),
          ),
          text3 != null
              ? Row(
                  children: [
                    Image.asset(icon3!),
                    SizedBox(
                      width: Constants.height10,
                    ),
                    Text(text3!),
                  ],
                )
              : const SizedBox.shrink(),
          AppButton(text: btnTxt)
        ],
      ),
    );
    ;
  }

  static void showBottomSheet(BuildContext context, Widget Sheet) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Sheet;
        });
  }
}

/// accept 4 (2, icons and 2 text) arguments to show when the bottomSheet is opened
///  the elements will be displayed as row
/// MyBottoSheet.showBottomSheet(...argumentss) will open the bottomSheet



 


















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
