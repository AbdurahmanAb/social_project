import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/core/Row_widget.dart';
import 'package:kim/core/text/text_styles.dart';
import 'package:kim/core/ui/avatar.dart';
import 'package:kim/features/profile/presentation/widgets/social_row.dart';
import 'package:kim/utils/constants.dart';

class ProfileThumbnail extends StatelessWidget {
  const ProfileThumbnail({super.key});

  @override
  Widget build(BuildContext context) {
    int followers = 0;
    int following = 0;
    return SingleChildScrollView(
      child: Container(
        color: Constants.lightblack,
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(Constants.height20 + 5)),
                    child: Image.asset(
                      "assets/avatar/post2.jpg",
                      fit: BoxFit.cover,
                      width: double.maxFinite,
                      height: Constants.screen_height * .2,
                    )),
                Positioned(
                    top: 15,
                    left: 10,
                    width: Constants.screen_width * .9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/icons/button_closed.png"),
                        Row(
                          children: [
                            Image.asset("assets/icons/button_share.png"),
                            SizedBox(
                              width: Constants.height10,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      Constants.height10 * 5),
                                  color: Constants.white,
                                ),
                                padding: EdgeInsets.all(Constants.height15 / 3),
                                child: Image.asset(
                                  "assets/icons/icon_component.png",
                                ))
                          ],
                        ),
                      ],
                    )),
                Positioned(
                    bottom: Constants.height15,
                    right: Constants.height10,
                    child: Container(
                        padding:
                            EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Constants.white),
                        child: Text(
                          '프로필 편집',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF7C7C80),
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ))),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              transform:
                  Matrix4.translationValues(0, -Constants.screen_height * .02, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AvatarImg(
                    ImgUrl: "assets/avatar/avatar5.jpg",
                    height: 67,
                    width: 63,
                  ),
                  SizedBox(
                    width: Constants.height20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: Constants.height20 * 1.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              '빛나는_별다방',
                              style: TextStyle(
                                color: Constants.white,
                                fontSize: Constants.mdFont + 2,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Constants.height10,
                        ),
                        Row(
                          children: [
                            Text('팔로워  $followers', style: TestStyles.style2),
                            SizedBox(
                              width: Constants.height20,
                            ),
                            Text('팔로잉  $following', style: TestStyles.style2)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: Constants.height10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SocialRow(
                      content1: Image.asset("assets/icons/icon_instagram.png"),
                      content2: Text(
                        "계정 등록",
                        style: TextStyle(fontSize: Constants.smFont),
                      )),
                  SocialRow(
                      content1: Image.asset("assets/icons/icon_twitter.png"),
                      content2: Text(
                        "계정 등록",
                        style: TextStyle(fontSize: Constants.smFont),
                      )),
                  SocialRow(
                      content1: Image.asset("assets/icons/icon_youtube.png"),
                      content2: Text(
                        "계정 등록",
                        style: TextStyle(fontSize: Constants.smFont),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: Constants.height10,
            ),
            Divider(),
            SizedBox(
              height: Constants.height10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '빛나는_별다방',
                          style: TextStyle(

                            color: Constants.white,
                            fontSize: Constants.mdFont,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: '님의 ',
                          style: TextStyle(
                            color: Constants.white,
                            fontSize: Constants.mdFont,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: '브랜드 뱃지',
                          style: TextStyle(
                            color: Constants.appColor,
                            fontSize: Constants.mdFont,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: ' 획득 현황',
                          style: TextStyle(
                            color: Constants.white,
                            fontSize: Constants.mdFont,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: Constants.height10,
                ),
                Text(
                  '아직 완성된 브랜드가 없습니다.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Constants.white,
                    fontSize: Constants.smFont,
                  ),
                ),
                SizedBox(
                  height: Constants.height10/2,
                ),
                Text(
                  '다양한 활동으로 브랜드 뱃지를 얻으세요.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Constants.white,
                    fontSize: Constants.smFont,
                  ),
                ),
                SizedBox(
                  height: Constants.height20 * 1.5,
                ),
                Container(
                  width: Constants.screen_width * .25,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Constants.appColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "갭 작성",
                    style: TextStyle(
                        color: Constants.black, fontWeight: FontWeight.w500),
                  ),
                ),
               Row(
                 children: [
                   Text(
                   '내 소개를 등록하세요.',
                   style: TextStyle(
                   color: Constants.appColor,
                   fontSize: Constants.mdFont,
                   
                   fontWeight: FontWeight.w400,
                   
                   ),
                   ),
                 ],
               ), 
              ],
            ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
        
          height: 170,
          decoration: BoxDecoration(color: Color(0xFF444446),
          borderRadius: BorderRadius.circular(25)
          ),
      child: Image.asset("assets/avatar/gab_illust.png"),
        ),
      )
      
      
          ],
        ),
      ),
    );
  }
}

class ProfileThumbnailShow {
  static void showProfileThumnail(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        constraints: BoxConstraints(maxHeight: Constants.screen_height * .84),
        context: context,
        builder: (context) => ProfileThumbnail());
  }
}
