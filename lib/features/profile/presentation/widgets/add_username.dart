import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/core/ui/app_button.dart';
import 'package:kim/utils/constants.dart';

class AddUserName extends StatelessWidget {
  const AddUserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Constants.height20),
      child: Column(
    
        children: [
          Row(children: [
            Icon(Icons.close),
            Expanded(child: Center(
              child: Text("Center"),
            ))
          ],),
SizedBox(height: Constants.height10,),
          Divider(),
          SizedBox(height: 38,child: TextField(

            
            style: TextStyle(fontSize: 12),

            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(8),
              filled: true,
              hintText: "@supertramp2024",
            
              fillColor: Constants.Iconbg,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )
              
            ),
          ),),
         AppButton(text: "add")
        ],
      ),
    );
  }
}

class AddUserame{
static void showUsernameDialog(context){
showModalBottomSheet(backgroundColor: Constants.bottom,

constraints: BoxConstraints(maxHeight: Constants.screen_height*0.3),
 context: context, builder:(context)=> AddUserName());

}
}

