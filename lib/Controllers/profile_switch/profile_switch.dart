import 'package:get/get.dart';

class ProfileSwitch extends GetxController{
  RxBool isSwitched = false.obs;

  void toogleSwitch(bool value){
    isSwitched.value = value;
  }
}