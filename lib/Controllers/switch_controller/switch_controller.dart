import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SwitchController extends GetxController {

  RxBool isPrivate = false.obs;

  Rx<Color> textColor = const Color(0xff000000).obs;

  void toggleSwitch(bool value) {
    isPrivate.value = value;
    textColor.
    value = value ? const Color(0xff77DD77) : const Color(0xff000000);  
  }
}
