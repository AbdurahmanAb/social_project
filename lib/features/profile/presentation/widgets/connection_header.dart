import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/core/ui/avatar.dart';
import 'package:kim/features/explore/presentation/widgets/ResultBtn.dart';
import 'package:kim/features/profile/presentation/widgets/connection_bottom_sheet.dart';
import 'package:kim/features/profile/presentation/widgets/row_data.dart';
import 'package:kim/utils/constants.dart';

class ConnectionHeader extends StatefulWidget {
final List rows;

  const ConnectionHeader({Key? key, required this.rows}) : super(key: key);

  @override
  State<ConnectionHeader> createState() => _ConnectionHeaderState();
}

class _ConnectionHeaderState extends State<ConnectionHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: DataTable(
        dividerThickness: 3,
        
        headingRowColor: MaterialStatePropertyAll(Constants.bottom),
          //  dataRowColor:MaterialStatePropertyAll(Colors.amber)
       columns: [
        DataColumn(
            label: Text(style: TextStyle(fontWeight: FontWeight.bold), "순위")),
        DataColumn(
            label:
                Text(style: TextStyle(fontWeight: FontWeight.bold), "대화명")),
        DataColumn(
            label: Text(style: TextStyle(fontWeight: FontWeight.bold), "댓글")),
        DataColumn(
            label:
                Text(style: TextStyle(fontWeight: FontWeight.bold), "업보트")),
        DataColumn(label: Image.asset("assets/avatar/right_side.png"))
      ], rows:    widget.rows.map((rowData) {
          return DataRow(
            
            cells: [
            DataCell(
              
              rowData.ranking == 1
                  ? Image.asset('assets/avatar/synbol.png')
                  : Text(rowData.ranking.toString()),
            ),
            DataCell(
              Row(
                children: [
                  rowData.avatar,
                  const SizedBox(width: 10),
                  Text(rowData.nickname),
                ],
              ),
            ),
            DataCell(
              Text(rowData.comment.toString()),
            ),
            DataCell(
              Text(rowData.upvote.toString()),
            ),
            DataCell(
              GestureDetector(
                onTap: () {
                  ConnectionBottomSheet.showConnectionBottomSheet(context);
                },
                child: ResultBtn(disabled: !rowData.isFollowed),
              ),
            ),
          ]);
        }).toList(),
       
      ),
    );
//     return Container(
//       child: Column(
//         children: [
//           Container(
//             //height: 150,
//             width: double.maxFinite,
//             color: Constants.postColor,
//             padding: EdgeInsets.symmetric(vertical:Constants.height15, horizontal: Constants.height10),
//             child:Expanded(
//               child: GridView.count(crossAxisCount: 5,

//               children: [

//                     Text(style: TextStyle(fontWeight: FontWeight.bold), "순위"),
//                   Text(style: TextStyle(fontWeight: FontWeight.bold), "대화명"),

//                   Text(style: TextStyle(fontWeight: FontWeight.bold), "댓글"),
//                   Text(style: TextStyle(fontWeight: FontWeight.bold), "업보트"),
//                   Image.asset("assets/avatar/right_side.png")
//               ],

//               ),
//             )

//             //  Row(
//             //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //   children: [

//              // ],
//             //),
//           ),
// // RowData(Upvote: 1000, avatar: AvatarImg(height: 35,width: 30,),comment: 1000,isFollowed: true,nickname: "슝카_828hgh2",ranking: 1,),
// // RowData(Upvote: 1000, avatar: AvatarImg(height: 35,width: 30,),comment: 1000,isFollowed: false,nickname: "슝카_8282",ranking: 2,)
// // ,  RowData(Upvote: 1000, avatar: AvatarImg(height: 35,width: 30,),comment: 1000,isFollowed: true,nickname: "슝카_8282",ranking: 3,)
// //  ,  RowData(Upvote: 1000, avatar: AvatarImg(height: 35,width: 30,),comment: 1000,isFollowed: false,nickname: "슝카_8282",ranking: 4,)
// //  ,  RowData(Upvote: 1000, avatar: AvatarImg(height: 35,width: 30,),comment: 1000,isFollowed: true,nickname: "슝카_8282",ranking: 5,)

//         ],
//       ),
//     );
  }
}
