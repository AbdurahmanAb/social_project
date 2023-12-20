import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/core/avatar.dart';
import 'package:kim/core/modal.dart';
import 'package:kim/features/explore/presentation/widgets/ResultBtn.dart';
import 'package:kim/utils/constants.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return  Container(
  
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(left:Constants.height10,right: Constants.height10, top: 20, bottom: Constants.height15), // padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const AvatarImg(),
                    SizedBox(width: Constants.height10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("sanasana_love" ,style: TextStyle(fontSize: 12),),
                        const SizedBox(height: 5,),
                        const Text("나이키 조깅 멤버 구해요~~",style: TextStyle(fontSize: 10)),
                          const SizedBox(height: 5,),
                        Image.asset("assets/avatar/nike.png", height: 20,),
                      ],
                    )
                  ],
                ),
                const ResultBtn(text: "팔로잉", disabled: true)
              ],
            ),
          ),
          const Divider(color: Constants.black,),
           Padding(
     padding: EdgeInsets.only(left:Constants.height10,right: Constants.height10, top: 20, bottom: Constants.height15), // padding: const EdgeInsets.all(8.0),
        //             padding: const EdgeInsets.all(8.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const AvatarImg(ImgUrl: "assets/avatar/post5.jpg"),
                    SizedBox(width: Constants.height10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("spider_maninga" ,style: TextStyle(fontSize: 12),),
                        const SizedBox(height: 5,),
                        const Text("나이키 조깅 멤버 구해요~~",style: TextStyle(fontSize: 10)),
                          const SizedBox(height: 5,),
                        Row(
                          children: [
                            Image.asset("assets/avatar/goout.png",),
                             const SizedBox(width: 3,),
                            Image.asset("assets/avatar/supreme.png", ),
                             const SizedBox(width: 3,),
                           Image.asset("assets/avatar/nike.png", height: 15,),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const ResultBtn(text: "팔로우", disabled: false)
              ],
                       ),
           ),
             const Divider(color: Constants.black,), Padding(
     padding: EdgeInsets.only(left:Constants.height10,right: Constants.height10, top: 20, bottom: Constants.height15), // padding: const EdgeInsets.all(8.0),
        //             padding: const EdgeInsets.all(8.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const AvatarImg(ImgUrl: "assets/avatar/post1.jpg"),
                    SizedBox(width: Constants.height10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("spider_maninga" ,style: TextStyle(fontSize: 12),),
                        const SizedBox(height: 5,),
                        const Text("나이키 조깅 멤버 구해요~~",style: TextStyle(fontSize: 10)),
                          const SizedBox(height: 5,),
                        Row(
                          children: [
                            Image.asset("assets/avatar/apple.png",),
                             const SizedBox(width: 3,),
                            Image.asset("assets/avatar/supreme.png", ),
                             const SizedBox(width: 3,),
                           Image.asset("assets/avatar/nike.png", height: 15,),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const ResultBtn(text: "팔로우", disabled: false)
              ],
                       ),
           ),
           Align(
            alignment: Alignment.bottomCenter,
            child: BottomModal())
        ],
      ),
    );
  }
}