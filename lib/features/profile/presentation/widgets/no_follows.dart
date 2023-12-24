import 'package:flutter/material.dart';
import 'package:kim/core/text/MidText.dart';
import 'package:kim/utils/constants.dart';
enum FollowerEnum{
follower,
following;
}
class NoFollow extends StatefulWidget {
  final Enum followerEnum;
  const NoFollow({super.key, required this.followerEnum});

  @override
  State<NoFollow> createState() => _NoFollowState();
}

class _NoFollowState extends State<NoFollow> {
  @override
  Widget build(BuildContext context) {
    return widget.followerEnum==FollowerEnum.follower? Column(
      children: [
        MidText(size: Constants.mdFont, text:"팔로워가 생기면 여기에 표시됩니다."),
        MidText(size: Constants.mdFont, text: "갭을 작성하고 다른 사람과 소통하여 팔로워를"),
        MidText(size: Constants.mdFont, text: "늘려보세여")
      ],
    ):Column(
      children: [
        MidText(size: Constants.mdFont, text:"팔로우가 생기면 여기에 표시됩니다."),
        MidText(size: Constants.mdFont, text: "상대방에게 먼저 팔로우를 하여 손을 내밀어 보세요."),
        MidText(size: Constants.mdFont, text: "친구의 갭을 빠르게 확인할 수 있습니다.")
      ],
    );
  }
}