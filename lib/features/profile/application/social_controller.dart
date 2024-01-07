import 'package:get/get.dart';

class SocialController extends GetxController {
  RxString instagramUsername = "".obs;
  RxString twitterUsername = "".obs;
  RxString youtubeUsername = "".obs;


void addInstaUsername(value){
  instagramUsername = value;
  update();
}
void addTwitterUsername(value){
  twitterUsername = value;
  update();
}void addYoutubeUsername(value){
  twitterUsername = value;
  update();
}
}
