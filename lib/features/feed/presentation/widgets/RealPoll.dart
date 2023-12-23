
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kim/features/feed/domian/PollController.dart';
import 'package:kim/utils/constants.dart';

class RealPoll extends StatefulWidget {
  const RealPoll({Key? key}) : super(key: key);

  @override
  State<RealPoll> createState() => _RealPollState();
}

class _RealPollState extends State<RealPoll> {
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
            child: Container(
              color: Constants.bottom,
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(polls[pollIndex]['question'], style: TextStyle(
                    
                  ),),
                  SizedBox(height:  Constants.height20),
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
              if(fillPercentage.isNaN){
                fillPercentage =0;
              }
                          print(options[optionIndex]['votes']);
                        },
                        child: Container(
                  width: 329,
                  height: 32,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                      color: Color(0xFF363638),
                      shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFFDBFF00)),
              borderRadius: BorderRadius.circular(10),
                      ),
                  ),
                  child: Stack(
                      children: [
              Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                      width: 272,
                      height: 32,
                      decoration: ShapeDecoration(
                          color: Constants.appColor,
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
                                      height: 16,
                                      child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                              SizedBox(
                                                  width: 34,
                                                  height: 15,
                                                  child: Text(
                                                      '문항',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                          fontFamily: 'KoPubDotum_Pro',
                                                          fontWeight: FontWeight.w700,
                                                         
                                                      ),
                                                  ),
                                              ),
                                          ],
                                      ),
                                  ),
                              ),
                              const SizedBox(width: 10),
                              Text.rich(
                                  TextSpan(
                                      children: [
                                          TextSpan(
                                              text: '90%',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'KoPubDotum_Pro',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0.08,
                                              ),
                                          ),
                                          TextSpan(
                                              text: ' (00명)',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontFamily: 'KoPubDotum_Pro',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0.08,
                                              ),
                                          ),
                                      ],
                                  ),
                                  textAlign: TextAlign.right,
                              ),
                          ],
                      ),
                  ),
              ),
                      ],
                  ),
              )
                      );
                    },
                    itemCount: options.length,
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: 1,
      ),
    );
  }
}



// Container(
//     width: 329,
//     height: 32,
//     clipBehavior: Clip.antiAlias,
//     decoration: ShapeDecoration(
//         color: Color(0xFF363638),
//         shape: RoundedRectangleBorder(
//             side: BorderSide(width: 1, color: Color(0xFFDBFF00)),
//             borderRadius: BorderRadius.circular(10),
//         ),
//     ),
//     child: Stack(
//         children: [
//             Positioned(
//                 left: 0,
//                 top: 0,
//                 child: Container(
//                     width: 272,
//                     height: 32,
//                     decoration: ShapeDecoration(
//                         color: Constants.appColor,
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(10),
//                                 bottomLeft: Radius.circular(10),
//                             ),
//                         ),
//                     ),
//                 ),
//             ),
//             Positioned(
//                 left: 0,
//                 top: 5,
//                 child: Container(
//                     width: 329,
//                     padding: const EdgeInsets.symmetric(horizontal: 12),
//                     clipBehavior: Clip.antiAlias,
//                     decoration: ShapeDecoration(
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10),
//                         ),
//                     ),
//                     child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                             Expanded(
//                                 child: Container(
//                                     height: 16,
//                                     child: Row(
//                                         mainAxisSize: MainAxisSize.min,
//                                         mainAxisAlignment: MainAxisAlignment.start,
//                                         crossAxisAlignment: CrossAxisAlignment.center,
//                                         children: [
//                                             SizedBox(
//                                                 width: 34,
//                                                 height: 15,
//                                                 child: Text(
//                                                     '문항',
//                                                     style: TextStyle(
//                                                         color: Colors.black,
//                                                         fontSize: 14,
//                                                         fontFamily: 'KoPubDotum_Pro',
//                                                         fontWeight: FontWeight.w700,
                                                       
//                                                     ),
//                                                 ),
//                                             ),
//                                         ],
//                                     ),
//                                 ),
//                             ),
//                             const SizedBox(width: 10),
//                             Text.rich(
//                                 TextSpan(
//                                     children: [
//                                         TextSpan(
//                                             text: '90%',
//                                             style: TextStyle(
//                                                 color: Colors.black,
//                                                 fontSize: 16,
//                                                 fontFamily: 'KoPubDotum_Pro',
//                                                 fontWeight: FontWeight.w700,
//                                                 height: 0.08,
//                                             ),
//                                         ),
//                                         TextSpan(
//                                             text: ' (00명)',
//                                             style: TextStyle(
//                                                 color: Colors.white,
//                                                 fontSize: 16,
//                                                 fontFamily: 'KoPubDotum_Pro',
//                                                 fontWeight: FontWeight.w700,
//                                                 height: 0.08,
//                                             ),
//                                         ),
//                                     ],
//                                 ),
//                                 textAlign: TextAlign.right,
//                             ),
//                         ],
//                     ),
//                 ),
//             ),
//         ],
//     ),
// )