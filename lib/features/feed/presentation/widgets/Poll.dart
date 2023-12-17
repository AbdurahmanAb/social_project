import 'package:flutter/material.dart';
import 'package:flutter_polls/flutter_polls.dart';
import 'package:get/get.dart';
import 'package:kim/features/feed/domian/PollController.dart';
import 'package:kim/utils/constants.dart';

class ExamplePolls extends StatefulWidget {
  const ExamplePolls({Key? key}) : super(key: key);

  @override
  State<ExamplePolls> createState() => _ExamplePollsState();
}

class _ExamplePollsState extends State<ExamplePolls> {
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

    return percentage;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      padding: const EdgeInsets.all(20),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        shrinkWrap: true,
        itemBuilder: (context, pollIndex) {
          List<Map<String, dynamic>> options = getOptions(pollIndex);

          return GestureDetector(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(polls[pollIndex]['question']),
                ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, optionIndex) {
                    List<Map<String, dynamic>> options = getOptions(pollIndex);
                    double fillPercentage =
                        getFillPercentage(pollIndex, optionIndex);
                    double containerHeight =30; // Set your desired container height

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          options[optionIndex]['votes'] += 20;
                        });
                        double totalVotes = options.fold(
                            0, (sum, option) => sum + option['votes']);
                        fillPercentage =
                            options[optionIndex]['votes'] / totalVotes;

                        print(options[optionIndex]['votes']);
                      },
                      child: Container(
                        width: double.maxFinite,
                        height: containerHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:
                              Constants.bottom, // Set your desired container color
                          border: Border.all(width:.5 , color: Constants.appColor),
                        ),
                        child: FractionallySizedBox(
                          alignment: Alignment.bottomLeft,
                          widthFactor: fillPercentage > 0 ? fillPercentage : 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                               color: Constants.appColor,
                            ),
                           
                             // Set your desired fill color
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: options.length,
                ),
              ],
            ),
          );
        },
        itemCount: polls.length,
      ),
    );
  }
}
