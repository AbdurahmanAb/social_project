import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/core/text/MidText.dart';
import 'package:kim/core/ui/avatar.dart';
import 'package:kim/features/profile/presentation/widgets/add_username.dart';
import 'package:kim/features/profile/presentation/widgets/profile_top_bar.dart';
import 'package:kim/utils/constants.dart';

import '../../../../core/my_bottom_sheet.dart';
import '../widgets/social_row.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
// State variables
  TextEditingController _usernameController = TextEditingController();
  bool _usernameAvailable = true; // Initial availability

// Function to check username availability
  void _checkUsernameAvailability(value) {
    // Simulate a network request to check availability

    _usernameAvailable =
        !value.contains("taken"); // Replace with your actual check logic
    setState(() {
      _usernameAvailable = false;
    }); // Trigger a rebuild to update the border color
  }

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.lightblack,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileTopBar(
              text: "프로필 편집",
              icon: Icons.close,
              textRight: "저장",
            ),
            GestureDetector(
              onTap: () {
                MyBottomSheet.showBottomSheet(
                    context,
                    "카메라",
                    "assets/icons/icon_modify.png",
                    "assets/icons/icon_picture.png",
                    "사진 앨범",
                    "닫기");
              },
              child: Container(
                height: Constants.screen_height * .2,
                color: Constants.disabled,
                child: Center(
                    child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Constants.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.add,
                          color: Constants.lightblack,
                          size: Constants.height20 - 1,
                        ))),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Constants.height20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    transform: Matrix4.translationValues(
                        0, -Constants.screen_height * .04, 0),
                    child: const AvatarImg(
                      ImgUrl: "assets/avatar/avatar5.jpg",
                      height: 86,
                      width: 82,
                      Enableborder: false,
                    ),
                  ),
                  const Text("대화명"),
                  SizedBox(
                    height: Constants.height10,
                  ),
                  SizedBox(
                    height: Constants.height20 * 2,
                    child: TextField(
                      onChanged: (value) => _checkUsernameAvailability(value),
                      controller: _usernameController,
                      style: TextStyle(
                          fontSize: Constants.smFont,
                          fontWeight: FontWeight.w200),
                      decoration: InputDecoration(
                        filled: true,
                        //isDense: true,
                        fillColor: Constants.postColor,
                        hintText: "대화명을 입력하세요",
                        hintStyle: TextStyle(fontSize: Constants.smFont),
                        contentPadding: EdgeInsets.only(top: 25, left: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: _usernameAvailable
                                    ? Colors.cyan
                                    : Colors.red,
                                width: .3)),
                        // focusColor: Constants.white,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Constants.white, width: .3)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Constants.height10,
                  ),
                  Text(
                    '대화명 변경 시, 3개월간 변경이 불가합니다.',
                    style: TextStyle(
                      color: Constants.pink,
                      fontSize: Constants.xsFont,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: Constants.height20,
                  ),
                  Text("내 소개 (선택)"),
                  SizedBox(
                    height: Constants.height10,
                  ),
                  SizedBox(
                    child: TextField(
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w200),
                      maxLength: 500,
                      buildCounter: (context,
                          {required currentLength,
                          required isFocused,
                          maxLength = 500}) {
                        return Container(
                          transform: Matrix4.translationValues(
                              Constants.height10, 0, 0),
                          child: Text(
                            "$currentLength/$maxLength",
                            style: TextStyle(fontSize: Constants.smFont),
                          ),
                        );
                      },
                      maxLines: 3,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Constants.postColor,
                        contentPadding: const EdgeInsets.only(
                            top: 15, bottom: 15, left: 10, right: 10),
                        hintText: "대화명을 입력하세요",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Constants.white, width: .3)),
                        focusColor: Constants.white,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Constants.white, width: .3)),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      MidText(text: "SNS 계정"),
                      SizedBox(
                        height: Constants.height10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SocialRow(
                                  content1: Image.asset(
                                      "assets/icons/icon_instagram.png"),
                                  content2: Text(
                                    "계정을 등록해주세요.",
                                    style:
                                        TextStyle(fontSize: Constants.smFont),
                                  )),
                              InkWell(
                                  overlayColor: MaterialStatePropertyAll(
                                      Colors.transparent),
                                  onTap: () {
                                    AddUserame.showUsernameDialog(
                                      context,
                                      "인스타그램 계정 등록",
                                    );
                                  },
                                  child: Icon(Icons.add))
                            ],
                          ),
                          SizedBox(
                            height: Constants.height10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SocialRow(
                                  content1: Image.asset(
                                      "assets/icons/icon_twitter.png"),
                                  content2: Text(
                                    "계정을 등록해주세요.",
                                    style:
                                        TextStyle(fontSize: Constants.smFont),
                                  )),
                              InkWell(
                                  overlayColor: MaterialStatePropertyAll(
                                      Colors.transparent),
                                  onTap: () {
                                    AddUserame.showUsernameDialog(
                                        context, "X 계정 등록");
                                  },
                                  child: Icon(Icons.add)),
                            ],
                          ),
                          SizedBox(
                            height: Constants.height10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SocialRow(
                                  content1: Image.asset(
                                      "assets/icons/icon_youtube.png"),
                                  content2: Text(
                                    "계정을 등록해주세요.",
                                    style:
                                        TextStyle(fontSize: Constants.smFont),
                                  )),
                              InkWell(
                                  overlayColor: MaterialStatePropertyAll(
                                      Colors.transparent),
                                  onTap: () {
                                    AddUserame.showUsernameDialog(
                                        context, "유튜브 계정 등록", true);
                                  },
                                  child: Icon(Icons.add))
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
