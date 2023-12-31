import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class NoRecent extends StatelessWidget {
  const NoRecent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(Constants.height20),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '최근 방문 라운지',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '모두 보기',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Constants.height20,
              ),
              Row(
                children: [
                  Image.asset("assets/avatar/leauge.png"),
                  SizedBox(
                    width: Constants.height10,
                  ),
                  const Text("@EPL")
                ],
              ),
            ],
          ),
        ),
        const Divider(),
        Padding(
          padding: EdgeInsets.all(Constants.height20),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    '브랜드 라운지 채널',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Constants.height20,
              ),
              const Text(
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  "자동으로 생성됩니다."),
              const Text(
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  "생성되지 않았네요."),
              SizedBox(
                height: Constants.height15,
              ),
              const Text(
                '😥',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFF0089),
                  fontSize: 34,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              SizedBox(
                height: Constants.height15,
              ),
              const Text(
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Constants.appColor),
                  "채널은 갭에서 언급량에 따라"),
              const Text(
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Constants.appColor),
                  "자동으로 생성됩니다.")
            ],
          ),
        ),
      ],
    );
  }
}
