import 'package:flutter/cupertino.dart';
import 'package:kim/features/profile/presentation/widgets/profile_top_bar.dart';

class BadgeStatus extends StatelessWidget {
  const BadgeStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileTopBar(text: "브랜드 뱃지 획득 현황"),
      ],
    );
  }
}