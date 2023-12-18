import  'package:get/get.dart';
import 'package:kim/features/feed/domian/PollController.dart';

Future< void> init() async {

  Get.lazyPut(() => PollController());
}