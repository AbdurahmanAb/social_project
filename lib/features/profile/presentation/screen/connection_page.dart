import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kim/features/profile/data/model/row_data.dart';
import 'package:kim/features/profile/presentation/widgets/connection_header.dart';
import 'package:kim/features/profile/presentation/widgets/connection_top.dart';

import '../../../../core/ui/avatar.dart';

class ConnectionPage extends StatefulWidget {
  const ConnectionPage({super.key});

  @override
  State<ConnectionPage> createState() => _ConnectionPageState();
}

class _ConnectionPageState extends State<ConnectionPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Get.toNamed("/profileConnection");
          },
          child:
          
           ConnectionTop()
           ),
   ConnectionHeader(
  rows: rowDataList,
)
     
    
   
      ],
    );
  }
}
