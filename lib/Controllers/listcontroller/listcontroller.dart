import 'package:get/get.dart';

class ListController extends GetxController {
  var images = [
    'assets/icons/red wine.png',
    'assets/icons/white wine.png',
    'assets/icons/black wine.png'
  ].obs;

  var titles = [
    'Red Wine',
    'White Wine',
    'Black Wine',
  ].obs;

  var selectedIndex = (0).obs;

  void changeColor(int index) {
    selectedIndex.value = index; 
  }
}
