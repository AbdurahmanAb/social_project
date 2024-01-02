import 'package:flutter/material.dart';
import 'package:kim/utils/constants.dart';

class CustomCheckBox extends StatefulWidget {
   bool disabledCheck;
  CustomCheckBox({super.key, required this.disabledCheck});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  List<int> _selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
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
              widget.disabledCheck = false;
              
            } else {
              _selectedIndex.add(index);
                widget.disabledCheck = false;
            }
            widget.disabledCheck = _selectedIndex.isEmpty;
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
    );
  }
}
