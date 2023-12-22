import 'package:flutter/material.dart';
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
      child: Container(
        width: double.maxFinite,
        height: Constants.screen_height - Constants.height10,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            color: Constants.Iconbg,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35), topRight: Radius.circular(35))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [



            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("취소"), Text("새로운 피드"), Text("등록")]),
            const Divider(),
            const Row(
              children: [
                Text("갭 작성 위치 : @현대・#제네시스"),
              ],
            ),
            const Expanded(
              child: Stack(
                children: [
                  TextField(
                    
                    decoration: InputDecoration.collapsed(
                      hintText:
                          " | 제목을 입력하세요. \n \n 내용을 입력해주세요.\n \n - 서로를 존중하고 누구나 기분 좋게 참여할 수 있는 커뮤니티가 될 수 있도록 함께 노력해주세요! \n - 토픽에 맞지 않는 글로 판단되어 다른 유저로부터 일정수 이상의 신고를 받는 경우 글리 자동으로 숨김처리 될 수 있습니다. \n  - 불법촬영물등을 업로드하거나 유통으로 간주할 수 있는 게시물을 작성하는 경우 게시물은 숨김조치되며 영구적으로 이용제한 될 수 있습니다.',",
                      hintStyle: TextStyle(
                        color: Color(0xFF7C7C80),
                        fontSize: 14,
                        
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    keyboardType: TextInputType.multiline,
                    maxLines: 99999,
                    autofocus: true,
                  ),
                  // Positioned(
                  //     top: 0,
                  //     child: Text(
                  //       "yooooo",
                  //       style: TextStyle(color:Constants.invisible),
                  //     ))
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "Save",
                style: TextStyle(
                  color: Color(0xFF7C7C80),
                ),
              ),
            )
          ],
        ),
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
