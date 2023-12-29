import 'package:get/get.dart';

class PollController extends GetxController {
  List polls = [
    {
      'id': 1,
      'question':
          'Is Flutter the best framework for building cross-platform applications?',
      'end_date': DateTime(2024, 11, 21),
      'options': [
        {
          'id': 1,
          'title': 'Absolutely',
          'votes': 20,
        },
        {
          'id': 2,
          'title': 'Maybe',
          'votes': 120,
        },
        {
          'id': 3,
          'title': 'Meh!',
          'votes': 033,
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
          'votes': 4330,
        },
        {
          'id': 2,
          'title': 'No, they do not',
          'votes': 700,
        },
        {
          'id': 3,
          'title': 'I do not know',
          'votes': 103,
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
          'title': 'It is certain that it is the same uuuuuuuuu',
          'votes': 14,
        },
        {
          'id': 3,
          'title': 'How am I supposed to know?',
          'votes': 10,
        },
      ],
    },
  ].obs;
}
