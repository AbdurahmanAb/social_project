import 'package:flutter/cupertino.dart';

import '../../../../utils/constsnts.dart';

class Comment extends StatelessWidget {
  const Comment({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             
               Row(
              
                 children: [
                   Image.asset("assets/Lounge/happy.png"),
                                SizedBox(width: Constants.height10,),
             const Text("315"),
                           SizedBox(width: Constants.height10,),
                   Image.asset("assets/Lounge/sad.png"),
                                 SizedBox(width: Constants.height20,),
                 ],
               ),
            
                
               Row(
                 children: [
                   Image.asset("assets/Lounge/comment.png"),
                   const SizedBox(width: 5,),
             const Text("72", style: TextStyle()),
                           const SizedBox(width: 20,),
                 ],
               ),
               
                              
               Row(
                 children: [
                   Image.asset("assets/Lounge/view.png"),
                                 const SizedBox(width: 5,),
             const Text("792"),
                 ],
               ),
              
                          ],
          );
  }
}