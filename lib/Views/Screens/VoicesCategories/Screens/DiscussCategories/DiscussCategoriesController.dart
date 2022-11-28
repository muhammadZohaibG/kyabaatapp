import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../AppPrefrences/AppPrefs.dart';
import '../../../../../utils/global.dart';
import 'DiscussCategoriesModel.dart';
String? selectedLang=AppPrefrences().language;


class DiscussCategoriesController extends GetxController {
// Future<SharedPreferences> prefs= SharedPreferences.getInstance();
//   String? lannn=  prefs.getString(LANG);

  List<DiscussCategoriesModel> discusscategoriesModelList = [
    DiscussCategoriesModel(
        name: 'Yes'.tr,
        menVoice:  selectedLang =='Urdu'? 'audios/menAudios/discuss/yes.mp3':'audios/menAudios/discuss/yes.mp3',
        womenVoice: selectedLang =='Urdu'?'audios/womenAudios/discuss/yes.mp3' :'audios/menAudios/discuss/yes.mp3'),
    DiscussCategoriesModel(
        name: 'No'.tr,
        menVoice: 'audios/menAudios/discuss/no.mp3',
        womenVoice: 'audios/womenAudios/discuss/no.mp3'),
    DiscussCategoriesModel(
        name: 'Explain in Detail'.tr,
        menVoice: 'audios/menAudios/discuss/inDetail.mp3',
        womenVoice: 'audios/womenAudios/discuss/inDetail.mp3'),
    DiscussCategoriesModel(
        name: 'Tell Again'.tr,
        menVoice: 'audios/menAudios/discuss/tellAgain.mp3',
        womenVoice: 'audios/womenAudios/discuss/tellAgain.mp3'),
    DiscussCategoriesModel(
        name: 'Speak Slowly'.tr,
        menVoice: 'audios/menAudios/discuss/speakSlowly.mp3',
        womenVoice: 'audios/womenAudios/discuss/speakSlowly.mp3'),
    DiscussCategoriesModel(
        name: 'Speak Loudly'.tr,
        menVoice: 'audios/menAudios/discuss/speakLoudly.mp3',
        womenVoice: 'audios/womenAudios/discuss/speakLoudly.mp3'),
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
