import 'package:get/get.dart';

class PollController extends GetxController{

RxString pollDays = ''.obs;

  void setData(String newData) {
    pollDays.value = newData;
  }

}