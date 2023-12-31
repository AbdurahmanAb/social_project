import 'package:flutter/cupertino.dart';
import 'package:kim/core/ui/avatar.dart';
import 'package:kim/features/explore/presentation/widgets/brand.dart';
import 'package:kim/utils/constants.dart';

class VerticalCard extends StatelessWidget {
  final String imgUrl;
  VerticalCard({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Constants.height10 / 2),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AvatarImg(Enableborder: false, ImgUrl: imgUrl),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("sean_kim77님이 갭을 등록하였습니다."),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        padding: const EdgeInsets.all(25),
                        decoration: BoxDecoration(
                            color: Constants.bottom,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "테니스는 라코스테인데.. 난 왜이리 안어울릴까~~다른 브랜드 추천해주세요 ",
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: Constants.height15,
                            ),
                            Row(
                              children: [
                                Brand(
                                  brand: "assets/avatar/apple.png",
                                  brandText: "@라코스테",
                                  brandText2: "#테니스 ",
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
