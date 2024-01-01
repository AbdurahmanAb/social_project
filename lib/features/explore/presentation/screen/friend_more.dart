import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/features/profile/data/brand_list.dart';
import 'package:kim/features/profile/presentation/widgets/profile_top_bar.dart';

import '../../../../core/ui/avatar.dart';
import '../../../../utils/constants.dart';
import '../widgets/brand.dart';

class FriendMore extends StatelessWidget {
  final List<String> imgUrl;
  const FriendMore({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Constants.lightblack,
          child: Column(
            children: [
              ProfileTopBar(text: "친구의 Gab"),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Expanded(
                    child: SingleChildScrollView(
                      child: ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(
                          height: Constants.height20,
                        ),
                        itemCount: imgUrl.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AvatarImg(
                                    Enableborder: false, ImgUrl: imgUrl[index]),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "sean_kim77님이 갭을 등록하였습니다.",
                                            style: TextStyle(
                                                fontSize: Constants.xsFont),
                                          ),
                                          Spacer(),
                                          Text('20분 전',
                                              style: TextStyle(
                                                  fontSize: Constants.xsFont))
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(15),
                                        decoration: BoxDecoration(
                                            color: Constants.bottom,
                                            borderRadius:
                                                BorderRadius.circular(18)),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                                  brand: BrandsList[index],
                                                  brandText: "@라코스테",
                                                  brandText2: "#테니스 ",
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
