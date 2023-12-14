import 'package:flutter/material.dart';
import 'package:kim/core/HeaderText.dart';
import 'package:kim/core/button.dart';
import 'package:kim/utils/constsnts.dart';

class AccessPage extends StatefulWidget {
  const AccessPage({super.key});

  @override
  State<AccessPage> createState() => _AccessPageState();
}

class _AccessPageState extends State<AccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
     SingleChildScrollView(
       child: Column(
         children: [
           Container(
        
            child:const Dialog(
              
              child: SingleChildScrollView(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Header(text: "text"),
                  ListTile(trailing: Text("tr"), leading: Icon(Icons.check_box, size: 15,),title: Text("main"),),
                  ListTile(trailing: Text("tr"), leading: Icon(Icons.check_box, size: 15,),title: Text("main"),),
                  ListTile(trailing: Text("tr"), leading: Icon(Icons.check_box, size: 15,),contentPadding: EdgeInsets.all(10), title: Text("mai dsjnfhasdjkfnasd, sdjklfbsdjkablfas,dmfnasdfasdfbasdjkfbasdf,masdfbasdkbn",),subtitle: Text("jhkeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeedfdmnbsd"),),
                   
                                 ListTile(trailing: Text("tr"), leading: Icon(Icons.check_box, size: 15,),title: Text("main"),),
                   
                                 ListTile(trailing: Text("tr"), leading: Icon(Icons.check_box, size: 15,),title: Text("main"),),
                   
                                 ListTile(trailing: Text("tr"), leading: Icon(Icons.check_box, size: 15,),title: Text("main"),),
                   
                   
                   
                   
                     
                ],
                          ),
              ))),
   
         ],
       ),
     ),
     )
      
    );
  }
}