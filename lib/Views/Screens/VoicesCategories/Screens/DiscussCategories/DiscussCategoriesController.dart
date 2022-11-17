import 'package:get/get.dart';

import 'DiscussCategoriesModel.dart';

class DiscussCategoriesController extends GetxController {
  List<DiscussCategoriesModel> discusscategoriesModelList = [
    DiscussCategoriesModel(name: 'Yes', menVoice: '', womenVoice: ''),
    DiscussCategoriesModel(name: 'No', menVoice: '', womenVoice: ''),
    DiscussCategoriesModel(
        name: 'Explain in Detail', menVoice: '', womenVoice: ''),
    DiscussCategoriesModel(name: 'Tell Again', menVoice: '', womenVoice: ''),
    DiscussCategoriesModel(name: 'Speak Slowly', menVoice: '', womenVoice: ''),
    DiscussCategoriesModel(name: 'Speak Loudly', menVoice: '', womenVoice: ''),
  ];

  checkGenderVoice(double Selectedval, String maleVoice, String femaleVoice) {
    if (Selectedval == false) {
      maleVoice;
      update();
    } else {
      femaleVoice;
      update();
    }
  }
}
