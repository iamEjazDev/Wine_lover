// import 'package:get/get.dart';

// class LocationController extends GetxController {
//   // Observables for selected country and province
//   var selectedCountry = ''.obs;
//   var selectedProvince = ''.obs;

//   // List of countries
//   final List<String> countries = ['Country 1', 'Country 2', 'Country 3'];

//   // Map of provinces for each country
//   final Map<String, List<String>> provinces = {
//     'Country 1': ['Province 1-1', 'Province 1-2', 'Province 1-3'],
//     'Country 2': ['Province 2-1', 'Province 2-2'],
//     'Country 3': ['Province 3-1', 'Province 3-2', 'Province 3-3', 'Province 3-4'],
//   };

//   // List of provinces for the selected country
//   RxList<String> provincesForSelectedCountry = <String>[].obs;

//   // Function to update provinces when a country is selected
//   void updateProvinces(String country) {
//     selectedCountry.value = country;
//     provincesForSelectedCountry.value = provinces[country] ?? [];
//     selectedProvince.value = '';
//   }
// }
