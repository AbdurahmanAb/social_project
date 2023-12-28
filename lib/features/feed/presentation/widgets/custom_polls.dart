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

    return percentage;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.maxFinite - 130,
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 10, right: 10),
      decoration: ShapeDecoration(
        color: Color(0xFF545456),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: ListView.builder(
        itemCount: polls.length,
        itemBuilder: (context,index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '최고의 캠핑 패스티발은?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Constants.mdFont ,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Text(
                        '복수 선택 불가',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Constants.height15,
              ),
              Expanded(
                child: SizedBox(
    
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context,i) {
                      return Container(
                        width: double.maxFinite,
                        height: 32,
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
                                width: 94,
                                height: 32,
                                decoration: ShapeDecoration(
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
                                padding: EdgeInsets.symmetric(horizontal: 12),
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
                                          color: Colors.white
                                              .withOpacity(0.000009999999747378752),
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
                                                color: Color(0xFFDBFF00),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      width: 1, color: Color(0xFFDBFF00)),
                                                  borderRadius: BorderRadius.circular(100),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '문항',
                                              style: TextStyle(
                                                color: Color(0xFF7C7C80),
                                                fontSize: Constants.mdFont ,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '30% (00명)',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Constants.mdFont,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  ),
                ),
              ),
              SizedBox(
                height: Constants.height15,
              ),
              // Container(
              //   width: double.maxFinite,
              //   height: 32,
              //   clipBehavior: Clip.antiAlias,
              //   decoration: ShapeDecoration(
              //     color: Color(0xFF363638),
              //     shape: RoundedRectangleBorder(
              //       side: BorderSide(width: 1, color: Color(0xFFDBFF00)),
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              //   child: Stack(
              //     children: [
              //       Positioned(
              //         left: 0,
              //         top: 0,
              //         child: Container(
              //           width: 167,
              //           height: 32,
              //           decoration: ShapeDecoration(
              //             color: Color(0xFFDBFF00),
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.only(
              //                 topLeft: Radius.circular(10),
              //                 bottomLeft: Radius.circular(10),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //       Positioned(
              //         left: 0,
              //         top: 5,
              //         child: Container(
              //           width: 329,
              //           padding: const EdgeInsets.symmetric(horizontal: 12),
              //           clipBehavior: Clip.antiAlias,
              //           decoration: ShapeDecoration(
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(10),
              //             ),
              //           ),
              //           child: Row(
              //             mainAxisSize: MainAxisSize.min,
              //             mainAxisAlignment: MainAxisAlignment.start,
              //             crossAxisAlignment: CrossAxisAlignment.center,
              //             children: [
              //               Expanded(
              //                 child: Container(
              //                   height: 21,
              //                   clipBehavior: Clip.antiAlias,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white
              //                         .withOpacity(0.000009999999747378752),
              //                   ),
              //                   child: Row(
              //                     mainAxisSize: MainAxisSize.min,
              //                     mainAxisAlignment: MainAxisAlignment.start,
              //                     crossAxisAlignment: CrossAxisAlignment.center,
              //                     children: [
              //                       Container(
              //                         width: 16,
              //                         height: 16,
              //                         decoration: ShapeDecoration(
              //                           color: Color(0xFFDBFF00),
              //                           shape: RoundedRectangleBorder(
              //                             side: BorderSide(
              //                                 width: 1, color: Color(0xFFDBFF00)),
              //                             borderRadius: BorderRadius.circular(100),
              //                           ),
              //                         ),
              //                       ),
              //                       Text(
              //                         '문항',
              //                         style: TextStyle(
              //                           color: Color(0xFF7C7C80),
              //                           fontSize: Constants.mdFont ,
              //                           fontWeight: FontWeight.w700,
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //               const SizedBox(width: 10),
              //               Text(
              //                 '50% (00명)',
              //                 textAlign: TextAlign.right,
              //                 style: TextStyle(
              //                   color: Colors.white,
              //                   fontSize: 16,
              //                   fontFamily: 'KoPubDotum_Pro',
              //                   fontWeight: FontWeight.w700,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: Constants.height15,
              // ),
              // Container(
              //   width: double.maxFinite,
              //   height: 32,
              //   clipBehavior: Clip.antiAlias,
              //   decoration: ShapeDecoration(
              //     color: Color(0xFF363638),
              //     shape: RoundedRectangleBorder(
              //       side: BorderSide(width: 1, color: Color(0xFFDBFF00)),
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              //   child: Stack(
              //     children: [
              //       Positioned(
              //         left: 0,
              //         top: 0,
              //         child: Container(
              //           width: 272,
              //           height: 32,
              //           decoration: ShapeDecoration(
              //             color: Color(0xFFDBFF00),
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.only(
              //                 topLeft: Radius.circular(10),
              //                 bottomLeft: Radius.circular(10),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //       Positioned(
              //         left: 0,
              //         top: 5,
              //         child: Container(
              //           width: 329,
              //           padding: const EdgeInsets.symmetric(horizontal: 12),
              //           clipBehavior: Clip.antiAlias,
              //           decoration: ShapeDecoration(
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(10),
              //             ),
              //           ),
              //           child: Row(
              //             mainAxisSize: MainAxisSize.min,
              //             mainAxisAlignment: MainAxisAlignment.start,
              //             crossAxisAlignment: CrossAxisAlignment.center,
              //             children: [
              //               Expanded(
              //                 child: Container(
              //                   height: 21,
              //                   clipBehavior: Clip.antiAlias,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white
              //                         .withOpacity(0.000009999999747378752),
              //                   ),
              //                   child: Row(
              //                     mainAxisSize: MainAxisSize.min,
              //                     mainAxisAlignment: MainAxisAlignment.start,
              //                     crossAxisAlignment: CrossAxisAlignment.center,
              //                     children: [
              //                       Container(
              //                         width: 16,
              //                         height: 16,
              //                         decoration: ShapeDecoration(
              //                           color: Color(0xFFDBFF00),
              //                           shape: RoundedRectangleBorder(
              //                             side: BorderSide(
              //                                 width: 1, color: Color(0xFFDBFF00)),
              //                             borderRadius: BorderRadius.circular(100),
              //                           ),
              //                         ),
              //                       ),
              //                       Text(
              //                         '문항',
              //                         style: TextStyle(
              //                           color: Color(0xFF7C7C80),
              //                           fontSize: Constants.mdFont ,
              //                           fontFamily: 'KoPubDotum_Pro',
              //                           fontWeight: FontWeight.w700,
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //               const SizedBox(width: 10),
              //               Text.rich(
              //                 TextSpan(
              //                   children: [
              //                     TextSpan(
              //                       text: '90%',
              //                       style: TextStyle(
              //                         color: Color(0xFF363638),
              //                         fontSize: 16,
              //                         fontFamily: 'KoPubDotum_Pro',
              //                         fontWeight: FontWeight.w700,
              //                       ),
              //                     ),
              //                     TextSpan(
              //                       text: ' (00명)',
              //                       style: TextStyle(
              //                         color: Colors.white,
              //                         fontSize: 16,
              //                         fontFamily: 'KoPubDotum_Pro',
              //                         fontWeight: FontWeight.w700,
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //                 textAlign: TextAlign.right,
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: Constants.height15,
              // ),
              // Container(
              //   width: double.maxFinite,
              //   height: 32,
              //   clipBehavior: Clip.antiAlias,
              //   decoration: ShapeDecoration(
              //     color: Color(0xFF363638),
              //     shape: RoundedRectangleBorder(
              //       side: BorderSide(width: 1, color: Color(0xFFDBFF00)),
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              //   child: Stack(
              //     children: [
              //       Positioned(
              //         left: 0,
              //         top: 0,
              //         child: Container(
              //           width: 329,
              //           height: 32,
              //           decoration: ShapeDecoration(
              //             color: Color(0xFFDBFF00),
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(10),
              //             ),
              //           ),
              //         ),
              //       ),
              //       Positioned(
              //         left: 0,
              //         top: 5,
              //         child: Container(
              //           width: 329,
              //           padding: const EdgeInsets.symmetric(horizontal: 12),
              //           clipBehavior: Clip.antiAlias,
              //           decoration: ShapeDecoration(
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(10),
              //             ),
              //           ),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.start,
              //             crossAxisAlignment: CrossAxisAlignment.center,
              //             children: [
              //               Expanded(
              //                 child: Container(
              //                   height: 21,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white
              //                         .withOpacity(0.000009999999747378752),
              //                   ),
              //                   child: Row(
              //                     mainAxisAlignment: MainAxisAlignment.start,
              //                     crossAxisAlignment: CrossAxisAlignment.center,
              //                     children: [
              //                       Container(
              //                         width: 16,
              //                         height: 16,
              //                         child: Stack(
              //                           children: [
              //                             Positioned(
              //                               left: 0,
              //                               top: 0,
              //                               child: Container(
              //                                 width: 16,
              //                                 height: 16,
              //                                 decoration: ShapeDecoration(
              //                                     shape: OvalBorder()),
              //                               ),
              //                             ),
              //                             Positioned(
              //                               left: 0,
              //                               top: 0,
              //                               child: Container(
              //                                 width: 16,
              //                                 height: 16,
              //                                 decoration: ShapeDecoration(
              //                                   color: Color(0xFF7C7C80),
              //                                   shape: RoundedRectangleBorder(
              //                                     side: BorderSide(
              //                                         width: 1,
              //                                         color: Color(0xFFDBFF00)),
              //                                     borderRadius:
              //                                         BorderRadius.circular(100),
              //                                   ),
              //                                 ),
              //                               ),
              //                             ),
              //                             Positioned(
              //                               left: 4,
              //                               top: 4,
              //                               child: Container(
              //                                 width: 8,
              //                                 height: 8,
              //                                 decoration: ShapeDecoration(
              //                                   color: Color(0xFFDBFF00),
              //                                   shape: RoundedRectangleBorder(
              //                                     borderRadius:
              //                                         BorderRadius.circular(20),
              //                                   ),
              //                                 ),
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                       ),
              //                       Text(
              //                         '문항',
              //                         style: TextStyle(
              //                           color: Colors.black
              //                               .withOpacity(0.20000000298023224),
              //                           fontSize: Constants.mdFont ,
              //                           fontWeight: FontWeight.w700,
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //               const SizedBox(width: 10),
              //               Text(
              //                 '100% (00명)',
              //                 textAlign: TextAlign.right,
              //                 style: TextStyle(
              //                   color: Color(0xFF363638),
              //                   fontSize: 16,
              //                   fontWeight: FontWeight.w700,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: Constants.height15,
              // ),
              // Container(
              //   width: double.infinity,
              //   height: 13,
              //   padding: const EdgeInsets.symmetric(horizontal: 8),
              //   child: Row(
              //     mainAxisSize: MainAxisSize.min,
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       SizedBox(
              //         width: 85,
              //         child: Text(
              //           '투표참여 : 16명',
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 12,
              //             fontFamily: 'KoPubDotum_Pro',
              //             fontWeight: FontWeight.w500,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          );
        }
      ),
    );
  }
}
