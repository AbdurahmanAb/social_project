import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kim/core/ui/avatar.dart';
import 'package:kim/core/modal.dart';
import 'package:kim/features/explore/presentation/widgets/ResultBottom.dart';
import 'package:kim/features/explore/presentation/widgets/ResultBtn.dart';
import 'package:kim/utils/constants.dart';

class ResultPage extends StatefulWidget {
  final String name;
  final String subtitle;
  final Widget avatar;
  final bool isFollowed;
  final Function? onTab;
  final List brands;

  const ResultPage(
      {super.key,
      required this.name,
      required this.subtitle,
      required this.avatar,
      required this.isFollowed,
      required this.brands,
      this.onTab});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  Widget Renderrows() {
    List<Widget> rows = [];
    for (int i = 0; i < widget.brands.length; i++) {
      rows.add(Image.asset(
        widget.brands[i],
        height: 20,
      ));
      rows.add(SizedBox(
        width: Constants.height10 / 2,
      ));
    }

    return Row(
      children: rows,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: Constants.height10,
                  right: Constants.height10,
                  bottom: Constants
                      .height15), // padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    //  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 48, width: 48, child: widget.avatar),
                      SizedBox(
                        width: Constants.height10,
                      ),
                      InkWell(
                        overlayColor:
                            MaterialStatePropertyAll(Colors.transparent),
                        onTap: () {
                          Get.toNamed("/profilebadge");
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.name,
                              style: TextStyle(fontSize: 12),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(widget.subtitle,
                                style: TextStyle(fontSize: 10)),
                            const SizedBox(
                              height: 5,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Renderrows(),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  widget.isFollowed
                      ? ResultBtn(
                          disabled: true,
                          onTab: widget.onTab,
                        )
                      : ResultBtn(disabled: false, onTab: widget.onTab,),
                ],
              ),
            ),
            // const Divider(
            //   color: Constants.black,
            // ),
            // GestureDetector(
            //   onTap: () {
            //     ResultBottom.showResultBottom(context);
            //   },
            //   child: Padding(
            //     padding: EdgeInsets.only(
            //         left: Constants.height10,
            //         right: Constants.height10,
            //         top: 20,
            //         bottom: Constants
            //             .height15), // padding: const EdgeInsets.all(8.0),
            //     //             padding: const EdgeInsets.all(8.0),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Row(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             SizedBox(
            //                 height: 48,
            //                 width: 48,
            //                 child: const AvatarImg(
            //                   ImgUrl: "assets/avatar/post5.jpg",
            //                 )),
            //             SizedBox(
            //               width: Constants.height10,
            //             ),
            //             Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 const Text(
            //                   "spider_maninga",
            //                   style: TextStyle(fontSize: 12),
            //                 ),
            //                 const SizedBox(
            //                   height: 5,
            //                 ),
            //                 const Text("나이키 조깅 멤버 구해요~~",
            //                     style: TextStyle(fontSize: 10)),
            //                 const SizedBox(
            //                   height: 5,
            //                 ),
            //                 Row(
            //                   children: [
            //                     Image.asset(
            //                       "assets/avatar/goout.png",
            //                     ),
            //                     const SizedBox(
            //                       width: 3,
            //                     ),
            //                     Image.asset(
            //                       "assets/avatar/supreme.png",
            //                     ),
            //                     const SizedBox(
            //                       width: 3,
            //                     ),
            //                     Image.asset(
            //                       "assets/avatar/nike.png",
            //                       height: 15,
            //                     ),
            //                   ],
            //                 ),
            //               ],
            //             )
            //           ],
            //         ),
            //         const ResultBtn( disabled: false)
            //       ],
            //     ),
            //   ),
            // ),
            const Divider(
              color: Constants.black,
            ),
          ],
        ),
      ),
    );
  }
}
