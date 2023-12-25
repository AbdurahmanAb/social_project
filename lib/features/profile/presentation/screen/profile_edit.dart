import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/core/text/MidText.dart';
import 'package:kim/core/ui/avatar.dart';
import 'package:kim/features/profile/presentation/widgets/profile_top_bar.dart';
import 'package:kim/utils/constants.dart';

import '../../../../core/MyBottomSheet.dart';
import '../widgets/social_row.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
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
              onTap: (){
                 MyBottomSheet.showBottomSheet(
                              context,
                              "카메라",
                              "assets/icons/icon_modify.png",
                              "assets/icons/icon__picture.png",
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
                      decoration: InputDecoration(
                        filled: true,
                        isDense: true,
                        fillColor: Constants.postColor,
                       contentPadding: const EdgeInsets.only(
                            top: 5, bottom: 15, left: 10, right: 10),
                        hintText: "대화명을 입력하세요",
                        hintStyle:  TextStyle(
                          
                          fontSize: Constants.xsFont, fontWeight: FontWeight.w200),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Constants.white, width: .3)),
                        focusColor: Constants.white,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Constants.white, width: .3)),
                      ),
                    ),
                  ),
                  SizedBox(height: Constants.height10,),
                  Text(
                    '대화명 변경 시, 3개월간 변경이 불가합니다.',
                    style: TextStyle(
                      color:Constants.pink,
                      fontSize: Constants.xsFont,
                      
                      fontWeight: FontWeight.w500,
                  
                    ),
                  ),   SizedBox(height: Constants.height20,),
                  Text("내 소개 (선택)"),
                  SizedBox(
                    height: Constants.height10,
                  ),
                     SizedBox(
              
                    child: TextField(
                      maxLength: 500,
                       buildCounter: (context,
                    {required currentLength, required isFocused, maxLength=500}) {
                  return Container(
                    transform: Matrix4.translationValues(Constants.height10, 0, 0),
                    child: Text("$currentLength/$maxLength", style: TextStyle(fontSize: Constants.smFont),),
                  );
                },
                      maxLines: 3,
                      decoration: InputDecoration(
              
                        filled: true,
                        fillColor: Constants.postColor,
                        contentPadding: const EdgeInsets.only(
                            top: 15, bottom: 15, left: 10, right: 10),
                        hintText: "대화명을 입력하세요",
                        hintStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Constants.white, width: .3)),
                        focusColor: Constants.white,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Constants.white, width: .3)),
                      ),
                    ),
                  ),
               Column(
               crossAxisAlignment:CrossAxisAlignment.stretch,
                children: [
                  MidText(text: "SNS 계정"),
                  SizedBox(height: Constants.height10,),
                   Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialRow(
                  content1: Image.asset("assets/icons/icon_instagram.png"),
                  content2: Text(
                    "계정을 등록해주세요.",
                    style: TextStyle(fontSize: Constants.smFont),
                  ))   , Icon(Icons.add)
            ],
          ), SizedBox(height: Constants.height10,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialRow(
                  content1: Image.asset("assets/icons/icon_twitter.png"),
                  content2: Text(
                    "계정을 등록해주세요.",
                    style: TextStyle(fontSize: Constants.smFont),
                  )),Icon(Icons.add),
            ],
          ),   SizedBox(height: Constants.height10,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialRow(
                  content1: Image.asset("assets/icons/icon_youtube.png"),
                  content2: Text(
                    "계정을 등록해주세요.",
                    style: TextStyle(fontSize: Constants.smFont),
                  )  ),Icon(Icons.add)
            ],
          ) , 
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