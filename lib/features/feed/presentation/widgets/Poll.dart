import 'package:flutter/material.dart';
import 'package:flutter_polls/flutter_polls.dart';
import 'package:kim/utils/constsnts.dart';

class ExamplePolls extends StatefulWidget {
  const ExamplePolls({Key? key}) : super(key: key);

  @override
  State<ExamplePolls> createState() => _ExamplePollsState();
}

class _ExamplePollsState extends State<ExamplePolls> {
  List polls() => [
        {
          'id': 1,
          'question':
              'Is Flutter the best framework for building cross-platform applications?',
          'end_date': DateTime(2024, 11, 21),
          'options': [
            {
              'id': 1,
              'title': 'Absolutely',
              'votes': 10,
            },
            {
              'id': 2,
              'title': 'Maybe',
              'votes': 20,
            },
            {
              'id': 3,
              'title': 'Meh!',
              'votes': 10,
            },
          ],
        },
        {
          'id': 2,
          'question': 'Do you think Oranguntans have the ability speak?',
          'end_date': DateTime(2024, 11, 21),
          'options': [
            {
              'id': 1,
              'title': 'Yes, they definitely do',
              'votes': 40,
            },
            {
              'id': 2,
              'title': 'No, they do not',
              'votes': 70,
            },
            {
              'id': 3,
              'title': 'I do not know',
              'votes': 10,
            },
            {
              'id': 4,
              'title': 'Why should I care?',
              'votes': 30,
            }
          ],
        },
        {
          'id': 3,
          'question':
              'How do you know that your experience of consciousness is the same as other people’s experience of consciousness?',
          'end_date': DateTime(2023, 04, 30),
          'options': [
            {
              'id': 2,
              'title': 'It is certain that it is the same',
              'votes': 4,
            },
            {
              'id': 3,
              'title': 'How am I supposed to know?',
              'votes': 10,
            },
          ],
        },
      ];

  List<Map<String, dynamic>> getOptions(int pollIndex) {
    return polls()[pollIndex]['options'].toList().cast<Map<String, dynamic>>();
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
                Text(polls()[pollIndex]['question']),
                ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 5,
                    );
                  },
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, optionIndex) {
                    List<Map<String, dynamic>> options = getOptions(pollIndex);
                    double fillPercentage =
                        getFillPercentage(pollIndex, optionIndex);
                    double containerHeight =
                        50; // Set your desired container height

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
                              Colors.blue, // Set your desired container color
                          border: Border.all(width: 5, color: Colors.black),
                        ),
                        child: FractionallySizedBox(
                          alignment: Alignment.bottomLeft,
                          widthFactor: fillPercentage > 0 ? fillPercentage : 0,
                          child: Container(
                            color: Colors.white, // Set your desired fill color
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
        itemCount: polls().length,
      ),
    );
  }
}
