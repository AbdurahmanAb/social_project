import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:kim/features/feed/domian/poll_controller.dart';
import 'package:kim/utils/constants.dart';

class CustomPolls extends StatefulWidget {
  const CustomPolls({Key? key}) : super(key: key);

  @override
  State<CustomPolls> createState() => _CustomPollsState();
}

class _CustomPollsState extends State<CustomPolls> {
  List polls = Get.find<PollController>().polls;

  List<Map<String, dynamic>> getOptions(int pollIndex) {
    return polls[pollIndex]['options'].cast<Map<String, dynamic>>();
  }

  double getFillPercentage(int pollIndex, int optionIndex) {
    List<Map<String, dynamic>> options = getOptions(pollIndex);
    int totalVotes =
        options.fold(0, (sum, option) => sum + (option['votes'] as int));
    int votes = options[optionIndex]['votes'];
    double percentage = votes / totalVotes;

    if (percentage.isNaN) {
      return 0;
    }
    return percentage;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) => Container(
        width: double.maxFinite,
        height: 32,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: const Color(0xFF363638),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFDBFF00)),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: (index+1) *75,
                height: 32,
                decoration: const ShapeDecoration(
                  color: Color(0xFFDBFF00),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 5,
              child: Container(
                width: 329,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 21,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          color:
                              Colors.white.withOpacity(0.000009999999747378752),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 16,
                              height: 16,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFDBFF00),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Color(0xFFDBFF00)),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),
                            Text(
                              '문항',
                              style: TextStyle(
                                color: const Color(0xFF7C7C80),
                                fontSize: Constants.mdFont,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      '50% (00명)',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        //                      fontFamily: 'KoPubDotum_Pro',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
