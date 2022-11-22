import 'package:get/get.dart';

import 'DiscussCategoriesModel.dart';

class DiscussCategoriesController extends GetxController {
  List<DiscussCategoriesModel> discusscategoriesModelList = [
    DiscussCategoriesModel(
        name: 'Yes',
        menVoice: 'audios/menAudios/discuss/yes.mp3',
        womenVoice: 'audios/womenAudios/discuss/yes.mp3'),
    DiscussCategoriesModel(
        name: 'No',
        menVoice: 'audios/menAudios/discuss/no.mp3',
        womenVoice: 'audios/womenAudios/discuss/no.mp3'),
    DiscussCategoriesModel(
        name: 'Explain in Detail',
        menVoice: 'audios/menAudios/discuss/inDetail.mp3',
        womenVoice: 'audios/womenAudios/discuss/inDetail.mp3'),
    DiscussCategoriesModel(
        name: 'Tell Again',
        menVoice: 'audios/menAudios/discuss/tellAgain.mp3',
        womenVoice: 'audios/womenAudios/discuss/tellAgain.mp3'),
    DiscussCategoriesModel(
        name: 'Speak Slowly',
        menVoice: 'audios/menAudios/discuss/speakSlowly.mp3',
        womenVoice: 'audios/womenAudios/discuss/speakSlowly.mp3'),
    DiscussCategoriesModel(
        name: 'Speak Loudly',
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
