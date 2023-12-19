import 'package:flutter/cupertino.dart';
import 'package:kim/core/avatar.dart';
import 'package:kim/features/explore/presentation/widgets/brand.dart';
import 'package:kim/utils/constants.dart';

class VerticalCard extends StatelessWidget {
  const VerticalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
 
      color: Constants.Iconbg,
      padding: EdgeInsets.all(Constants.height10 / 2),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("친구의 Gab"),
                Icon(CupertinoIcons.forward),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AvatarImg(),
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
                    Container(
                      padding: const EdgeInsets.all(25),
                      decoration: BoxDecoration(
                          color: Constants.bottom,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "테니스는 라코스테인데.. 난 왜이리 안어울릴까~~다른 브랜드 추천해주세요 ",
                            style: TextStyle(fontSize: 20),
                          ),
                          Row(
                            children: [
                              Brand(
                                brand: "Lactose",
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
    );
  }
}
