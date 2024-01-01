import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kim/core/ui/app_button.dart';
import 'package:radio_group_v2/radio_group_v2.dart';
import '../../../../utils/constants.dart';

class Bottomradion extends StatefulWidget {
   int value;

   Bottomradion({super.key,  this.value=3});
  @override
  _BottomradionState createState() => _BottomradionState();
}

class _BottomradionState extends State<Bottomradion> {
  RadioGroupController myController = RadioGroupController();
  final GlobalKey<RadioGroupState> radioGroupKey1 =
      GlobalKey<RadioGroupState>();

  List<String> values = [" 7일", "6일", "5일", "4일", "3일 ", "2일 ", "1일 "];
  bool disabled = true;
  int _selectedIndex = -1;


  void enableButton() {
    setState(() {
      disabled = false;
    });
  }

  void onRadioGroupChanged(value) {
    setState(() {
      disabled = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
            color: Constants.Iconbg,
            borderRadius: BorderRadius.vertical(top: Radius.circular(8))),
        padding: EdgeInsets.symmetric(
            vertical: Constants.height20, horizontal: Constants.height10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: Constants.height15,
                ),
                itemCount: values.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        enableButton();
                        _selectedIndex = index;
                        widget.value = _selectedIndex+1;
                      });
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _selectedIndex == index
                            ? Image.asset("assets/icons/radio_check.png")
                            : Image.asset("assets/icons/radio.png"),
                        SizedBox(
                          width: 5,
                        ),
                        Text(values[index])
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: Constants.height20,
            ),
            GestureDetector(
              onTap: (){
                Get.back(result: widget.value);
              },
              child: AppButton(text: "닫 기", disabled: disabled,)),
          ],
        ),
      ),
    );
  }
}

class BottomradionSheet {
  static void showBottomSheet(BuildContext context, int value) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      constraints: BoxConstraints(
        minHeight: 0.8,
        maxHeight: Constants.screen_height * 0.8,
      ),
      builder: (BuildContext context) {
        return Bottomradion(value:value);
      },
    );
  }
}
