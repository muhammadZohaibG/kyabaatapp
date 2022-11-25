import 'package:get/get.dart';
import 'package:howsfeeling/Views/Screens/Home/Screens/HomeScreen.dart';

import '../../../Localization/Localization.dart';

class LanguageController extends GetxController{
  changeLanguage(String language){
    LocalizationServices().changeLocale(language);
    update();
    Get.off(()=> HomeScreen());
  }
}