import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/core/my_bottom_sheet.dart';
import 'package:kim/core/modal.dart';
import 'package:kim/core/text/link_text.dart';
import 'package:kim/core/text/text_styles.dart';
import 'package:kim/core/ui/avatar.dart';
import 'package:kim/features/Lounge_Feed/presentation/widgets/comment.dart';
import 'package:kim/features/Lounge_Feed/presentation/widgets/showBottomSuMenu.dart';
import 'package:kim/features/explore/presentation/widgets/brand.dart';
import 'package:kim/utils/constants.dart';

import '../../../../core/link_preview.dart';

class LongPost extends StatelessWidget {
  final String img;
  final String text;
  final Widget? Avatar;
  final bool hasAd;
  final Color bgColor;
  final bool brandPost;
  final bool? hasTitle;
  LongPost(
      {this.text =
          "우는 그리워 이름을 써 사랑과 봄이 이름을 계십니다. 가을 이 위에 아직 잔디가 있습니다. 지나가는 오면 어머님, 나의 다하지 애기 소학교 이웃 있습니다. 무성할 그리워 하나에 위에 나의 소녀들의 까닭입니다. 보고, 잔디가 말 패, 그러나 위에도 어머님, 까닭입니다. 하늘에는 이름을 소학교 불러 했던 봅니다.",
      this.brandPost = false,
      this.bgColor = Constants.postColor,
      this.hasAd = false,
      this.img = "",
      super.key,
      this.Avatar,
      this.hasTitle = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      padding: EdgeInsets.all(Constants.height20),
      child: Column(
        children: [
          Row(
            children: [
              brandPost
                  ? const Brand(
                      brand: "assets/avatar/nike.png",
                      brandText: "@나이키",
                      brandText2: "#조던",
                    )
                  : const SizedBox.shrink(),
              const Spacer(),
              const Text("24분 전"),
              SizedBox(
                width: Constants.height10,
              ),
              InkWell(
                  onTap: () {
                    MyBottomSheet.showBottomSheet(
                        context,
                        "수정하기",
                        "assets/icons/icon_edit.png",
                        "assets/icons/icon_delete.png",
                        "삭제하기",
                        "닫기",
                        () {},
                        () {

                      ShowPopup.ShowDeletedPopup();
                        });
                  },
                  child: const Icon(Icons.more_horiz))
            ],
          ),
          !brandPost
              ? Row(
                  children: [
                    Avatar != null ? Avatar! : const AvatarImg(),
                    SizedBox(
                      width: Constants.height10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "빛나는_별다방",
                          style: TextStyle(fontSize: 12),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "@고아웃#캠핑",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w200),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Image.asset("assets/Lounge/frame_badge.png"),
                            SizedBox(
                              width: Constants.height10,
                            ),
                            Image.asset("assets/Lounge/frame_badge(1).png"),
                            SizedBox(
                              width: Constants.height10,
                            ),
                            Image.asset("assets/Lounge/frame_badge(2).png")
                          ],
                        )
                      ],
                    )
                  ],
                )
              : const SizedBox.shrink(),
          SizedBox(
            height: Constants.height10,
          ),
          hasTitle!
              ? Text(
                  "올해 고아웃 캠핑 너무 좋았어요~ 행사도 다양하고 사람들도 많이 만나고 내년도 좋은 추억 만들고 싶네요~ 예약 ㄱ ㄱ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: Constants.mdFont),
                )
              : const SizedBox.shrink(),
          const SizedBox(
            height: 20,
          ),
          Text(text),
          SizedBox(
            height: Constants.height20,
          ),
          img != ""
              ? Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(img)),

                      Positioned(right: 10,top: 10, child: Container(
                        padding: EdgeInsets.all(5),
                      //  width: 20,
                        decoration: BoxDecoration(
                          color: Constants.white,
                          borderRadius: BorderRadius.circular(25)
                        ),
                        child: Center(
                          child: Text("+3",style: TextStyles.style3,),
                        ),
                      ))
                ],
              )
              : const SizedBox.shrink(),
          SizedBox(
            height: Constants.height15,
          ),
        
          SizedBox(
            height: Constants.height20,
          ),
          const Row(
            children: [
              LinkText(text: "https://www.hyundai.com/kr/ko/e")
        
             
            ],
          ),
          SizedBox(
            height: Constants.height10 / 2,
          ),
          const LinkPreview(url: "https://www.hyundai.com/kr/ko/e"),
          SizedBox(
            height: Constants.height20,
          ),
          const Comment(),
        ],
      ),
    );
  }
}
