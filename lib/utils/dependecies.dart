import  'package:get/get.dart';
import 'package:kim/features/feed/domian/PollController.dart';

void init(){

  Get.lazyPut(() => PollController());
}