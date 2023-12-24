import  'package:get/get.dart';
import 'package:kim/features/feed/domian/poll_controller.dart';

Future< void> init() async {

  Get.lazyPut(() => PollController());
}