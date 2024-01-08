import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kim/core/share/group_avatar.dart';
import 'package:kim/core/share/socials.dart';
import 'package:kim/core/text/MidText.dart';
import 'package:kim/core/Row_widget.dart';
import 'package:kim/core/text/HeaderText.dart';
import '../../utils/constants.dart';

class Share {
  static void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
      constraints: BoxConstraints(
        minHeight: 0.8,
        maxHeight: Constants.screen_height * 0.8,
      ),
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            color: Constants.appBgColor,
            //padding: EdgeInsets.symmetric(vertical:Constants.height20, horizontal: Constants.height10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 15, horizontal: Constants.height10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(Constants.height10),
                                color: Constants.mainColor,
                                child: Image.asset(
                                    "assets/avatar/App Icon(1).png"),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Header(
                                      text: "iOS 15 Kit for Figma", size: 12),
                                  Text(
                                    "figma.com",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w100),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Constants.Iconbg,
                              borderRadius: BorderRadius.circular(50)),
                          child: const Icon(
                            Icons.close,
                            size: 12,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 0, horizontal: Constants.height10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                                height: 50,
                                width: 50,
                                child:
                                    Image.asset("assets/avatar/AirDrop.png")),
                            const Text(
                              "AirDrop",
                              style: TextStyle(fontSize: 8),
                            )
                          ],
                        ),
                        SizedBox(
                          width: Constants.height20,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(500),
                                  child: Image.asset(
                                    "assets/avatar/post1.jpg",
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            const Text(
                              "Firt La",
                              style: TextStyle(fontSize: 8),
                            )
                          ],
                        ),
                        SizedBox(
                          width: Constants.height20,
                        ),
                        const Column(
                          children: [
                             GroupAvatar(),
                            Text(
                              "Group",
                              style: TextStyle(fontSize: 8),
                            ),
                            Text(
                              "2 people",
                              style: TextStyle(fontSize: 5),
                            )
                          ],
                        ),
                        SizedBox(
                          width: Constants.height20,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(500),
                                  child: Image.asset(
                                    "assets/avatar/post3.jpg",
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            const Text(
                              "First",
                              style: TextStyle(fontSize: 8),
                            )
                          ],
                        ),
                        SizedBox(
                          width: Constants.height20,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(500),
                                  child: Image.asset(
                                    "assets/avatar/post4.jpg",
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            const Text(
                              "Third",
                              style: TextStyle(fontSize: 8),
                            )
                          ],
                        ),
                        SizedBox(
                          width: Constants.height20,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(500),
                                  child: Image.asset(
                                    "assets/avatar/post5.jpg",
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            const Text(
                              "Fourth",
                              style: TextStyle(fontSize: 8),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ), 
                const Divider(),
               
               //Share to Social media
          SizedBox(
            height: 60,
          //  width: 60,
            child: ListView.builder(
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
              return   Socials();
            },),
          ),
          const Row(
            children: [

 
            ],
          ),
             
             
                const Divider(),
            
                Padding(
                  padding: EdgeInsets.all(Constants.height10),
                  child: Container(
                    padding: EdgeInsets.all(Constants.height10),
                    decoration: BoxDecoration(
                        color: Constants.black,
                        borderRadius:
                            BorderRadius.circular(Constants.height10)),
                    child:  Column(
                      children: [
                        RowWidget(
                            alignment: MainAxisAlignment.spaceBetween,
                            content1: const MidText(text: "Add to Reading List"),
                            content2: Image.asset("assets/icons/icon_glass.png")),
                        const Divider(),
                        RowWidget(
                            alignment: MainAxisAlignment.spaceBetween,
                            content1: const MidText(text: "Add BookMark"),
                            content2: Image.asset("assets/icons/icon_book.png")),
                        const Divider(),
                        const RowWidget(
                            alignment: MainAxisAlignment.spaceBetween,
                            content1: MidText(text: "Add to Favorites"),
                            content2: Icon(Icons.star)),
                        const Divider(),
                        const RowWidget(
                            alignment: MainAxisAlignment.spaceBetween,
                            content1: MidText(text: "Find on Page"),
                            content2: Icon(Icons.search)),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text("Edit Actions...",
                          style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
