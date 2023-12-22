import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/features/gab_write/presentation/widgets/add_poll.dart';
import 'package:kim/utils/constants.dart';

class WriteVote extends StatefulWidget {
  const WriteVote({super.key});

  @override
  State<WriteVote> createState() => _WriteVoteState();
}

class _WriteVoteState extends State<WriteVote> {
  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.maxFinite,
              height: Constants.screen_height - Constants.height10,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Constants.Iconbg,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("취소"), Text("새로운 피드"), Text("등록")]),
                  const Divider(),
                  SizedBox(height: Constants.height15),
                  const Row(
                    children: [
                      Text("갭 작성 위치 : @현대・#제네시스"),
                    ],
                  ),
                  SizedBox(height: Constants.height10),
                  const Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: " | 제목을 입력하세요. ,",
                              hintStyle: TextStyle(
                                color: Color(0xFF7C7C80),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            keyboardType: TextInputType.multiline,
                            autofocus: true,
                          ),
                          TextField(
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            decoration: InputDecoration.collapsed(
                              hintText:
                                  " 내용을 입력해주세요. \n - 서로를 존중하고 누구나 기분 좋게 참여할 수 있는 커뮤니티가 될 수 있도록 함께 노력해주세요!- 토픽에 맞지 않는 글로 판단되어 다른 유저로부터 일정수 이상의 신고를 받는 경우 글리 자동으로 숨김처리 될 수 있습니다.- 불법촬영물등을 업로드하거나 유통으로 간주할 수 있는 게시물을 작성하는 경우 게시물은 숨김조치되며 영구적으로 이용제한 될 수 있습니다.",
                              hintStyle: TextStyle(
                                color: Color(0xFF7C7C80),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            keyboardType: TextInputType.multiline,
                            maxLines: 9999,
                            autofocus: true,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(Constants.height15),
            color: Constants.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                        child: Image.asset("assets/icons/icon_picture.png")),
                    SizedBox(
                      width: Constants.height10,
                    ),
                    GestureDetector(
                      onTap: (){
                        Addpoll.showAddPoll(context);
                      },
                        child: Image.asset("assets/icons/icon_list.png")),
                    SizedBox(
                      width: Constants.height10,
                    ),
                    GestureDetector(
                        child: Image.asset("assets/icons/icon_tag.png")),
                    SizedBox(
                      width: Constants.height10,
                    ),
                    GestureDetector(
                        child:
                            Image.asset("assets/icons/icon_brand_mention.png")),
                    SizedBox(
                      width: Constants.height10,
                    ),
                  ],
                ),
                Row(
                  children: [Text("공지로 고정")],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}



























// class WriteVote {
//   static void ShowWrite(context) {
//     showGeneralDialog(
//         context: context,
//         barrierDismissible: true,
//         barrierLabel:
//             MaterialLocalizations.of(context).modalBarrierDismissLabel,
//         barrierColor: Colors.black45,
//         transitionDuration: const Duration(milliseconds: 200),
//         pageBuilder: (BuildContext buildContext, Animation animation,
//             Animation secondaryAnimation) {
//           return Center(
//             child: 
//           );
//         });
//   }
// }
