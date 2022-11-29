import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../AppPrefrences/AppPrefs.dart';
import '../../../../../utils/global.dart';
import 'DiscussCategoriesModel.dart';
// String? selectedLang=AppPrefrences().language;

class DiscussCategoriesController extends GetxController {
// Future<SharedPreferences> prefs= SharedPreferences.getInstance();
//   String? lannn=  prefs.getString(LANG);

  List<DiscussCategoriesModel> discusscategoriesModelList = [
    DiscussCategoriesModel(
        name: 'Yes'.tr,
        menVoice: selectedLang == 'Urdu'
            ? 'audios/menAudios/urduLanguage/discuss/yes.mp3'
            : 'audios/menAudios/discuss/yes.mp3',
        womenVoice: selectedLang == 'Urdu'
            ? 'audios/womenAudios/urduLanguage/discuss/yes.mp3'
            : 'audios/menAudios/discuss/yes.mp3'),
    DiscussCategoriesModel(
        name: 'No'.tr,
        menVoice:selectedLang == 'Urdu'
            ? 'audios/menAudios/urduLanguage/discuss/no.mp3': 'audios/menAudios/discuss/no.mp3',
        womenVoice:selectedLang == 'Urdu'
            ? 'audios/womenAudios/urduLanguage/discuss/no.mp3': 'audios/womenAudios/discuss/no.mp3'),
    DiscussCategoriesModel(
        name: 'Explain in Detail'.tr,
        menVoice: selectedLang == 'Urdu'
            ? 'audios/menAudios/urduLanguage/discuss/detail.mp3'
            : 'audios/menAudios/discuss/inDetail.mp3',
        womenVoice: selectedLang == 'Urdu'
            ? 'audios/womenAudios/urduLanguage/discuss/inDetail.mp3'
            : 'audios/womenAudios/discuss/inDetail.mp3'),
    DiscussCategoriesModel(
        name: 'Tell Again'.tr,
        menVoice: selectedLang == 'Urdu'
            ? 'audios/menAudios/urduLanguage/discuss/again.mp3'
            : 'audios/menAudios/discuss/tellAgain.mp3',
        womenVoice: selectedLang == 'Urdu'
            ? 'audios/womenAudios/urduLanguage/discuss/tellagain.mp3'
            : 'audios/womenAudios/discuss/tellAgain.mp3'),
    DiscussCategoriesModel(
        name: 'Speak Slowly'.tr,
        menVoice: selectedLang == 'Urdu'
            ? 'audios/menAudios/urduLanguage/discuss/slowl.mp3'
            : 'audios/menAudios/discuss/speakSlowly.mp3',
        womenVoice: selectedLang == 'Urdu'
            ? 'audios/womenAudios/urduLanguage/discuss/slowly.mp3'
            : 'audios/womenAudios/discuss/speakSlowly.mp3'),
    DiscussCategoriesModel(
        name: 'Speak Loudly'.tr,
        menVoice: selectedLang == 'Urdu'
            ? 'audios/menAudios/urduLanguage/discuss/loudly.mp3'
            : 'audios/menAudios/discuss/speakLoudly.mp3',
        womenVoice: selectedLang == 'Urdu'
            ? 'audios/womenAudios/urduLanguage/discuss/loudly.mp3'
            : 'audios/womenAudios/discuss/speakLoudly.mp3'),
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
