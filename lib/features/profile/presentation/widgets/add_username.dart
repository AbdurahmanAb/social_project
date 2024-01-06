import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/core/text/text_styles.dart';
import 'package:kim/core/ui/app_button.dart';
import 'package:kim/utils/constants.dart';

class AddUserName extends StatefulWidget {
  final String text;
  const AddUserName({super.key, required this.text});

  @override
  State<AddUserName> createState() => _AddUserNameState();
}

class _AddUserNameState extends State<AddUserName> {
  bool disabled = true;
  late final TextEditingController _editingController;
  void initState() {
    super.initState();
    _editingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 
       MediaQuery.of(context).viewInsets,
      child: Container(
        padding: EdgeInsets.all(Constants.height20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.close),
                Expanded(
                    child: Center(
                  child: Text(widget.text),
                ))
              ],
            ),
            Divider(),
            SizedBox(
              height: Constants.height20,
            ),
            SizedBox(
              height: 38,
              child: TextField(
                onChanged: (val) {
                  setState(() {
                    disabled = false;
                  });
                },
                
                style: TextStyle(fontSize: 12),
                decoration: InputDecoration(
       focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Constants.chipColor, width: .5, ),  borderRadius: BorderRadius.circular(10)),
                    contentPadding: EdgeInsets.all(8),
                    filled: true,
                    hintText: "@사용자명 (예 : @wegab)",
                    fillColor: Constants.Iconbg,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))
                        
                        ),
              ),
            ),
            SizedBox(
              height: Constants.height20,
            ),
            Container(
              height: 34,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color:disabled?Constants.disabled: Constants.appColor2,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "저장",
                  style: TextStyles.style3,
                ),
              ),
            ),
            // AppButton(
            //   text: "
            //   disabled: disabled,
            // )
          ],
        ),
      ),
    );
  }
}

class AddUserame {
  static void showUsernameDialog(context, text) {
    showModalBottomSheet(
     
        backgroundColor: Constants.lightblack,
        useRootNavigator: true,
        constraints: BoxConstraints(minHeight: Constants.screen_height * 0.3),
        context: context,
      isScrollControlled: true,
        builder: (context) => AddUserName(text: text));
  }
}
