import 'package:flutter/material.dart';
import 'package:kim/utils/constants.dart';

import 'ui/app_button.dart';

class CustomCheckBox extends StatefulWidget {

  CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  List<int> _selectedIndex = [];
  bool disabled= true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) => SizedBox(
            height: 10,
          ),
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                if (_selectedIndex.contains(index)) {
                  _selectedIndex.remove(index);
                  disabled = false;
                } else {
                  _selectedIndex.add(index);
                  disabled = false;
                }
                disabled = _selectedIndex.isEmpty;
              });
            },
            child: Container(
              width: 329,
              // height: 32,
              decoration: BoxDecoration(
                border: Border.all(
                    color: _selectedIndex.contains(index)
                        ? Constants.appColor
                        : Colors.transparent,
                    width: .9),
                color: Color(0xFF363638),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              clipBehavior: Clip.antiAlias,
        
              child: Column(
                //   mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
        
                    //  height: 16,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _selectedIndex.contains(index)
                            ? Image.asset("assets/icons/checked.png")
                            : Image.asset("assets/icons/uncheck.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: SizedBox(
                            // height: 16,
                            child: Text(
                              '문항',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  height: 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
        ),SizedBox(
                    height: Constants.height10,
                  ),
                  AppButton(
                    text: "투표하기",
                    disabled:disabled,
                  ),
                  SizedBox(
                    height: Constants.height10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "투표참여 : 16명",
                      ),
                      Text("7 일 뒤 종료")
                    ],
                  )
      ],
    );
  }
}
