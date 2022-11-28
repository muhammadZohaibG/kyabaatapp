import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/MyConditions/MyConditionModel.dart';
import 'package:howsfeeling/utils/global.dart';

class MyConditionController extends GetxController {
  // final AudioPlayer _audioPlayer = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  String? currentAudio = '';
  bool isPlaying = false;
  final player = AudioPlayer();

  playAudio(String url) {
    player.play(AssetSource(url));
    update();
  }

  // List<CategoriesModel> oldMyConditionList = [
  //   CategoriesModel(
  //       name: 'Normal',
  //       image: 'assets/normal.png',
  //       menVoice: 'audios/menAudios/men111.m4a',
  //       womenVoice: 'audios/womenAudios/001-(hamariweb.com).mp3'),
  //   CategoriesModel(name: 'Feeling Pain',image: 'assets/sweating.png',menVoice: 'audios/menAudios/iqbalLala.m4a',womenVoice: 'audios/womenAudios/001-(hamariweb.com).mp3'),
  //   CategoriesModel(name: 'Feeling Cold',image: 'assets/feelingpain.png',menVoice: 'audios/menAudios/iqbalLala.m4a',womenVoice: 'audios/womenAudios/001-(hamariweb.com).mp3'),
  //   CategoriesModel(name: 'Sweating',image: 'assets/feelingpain.png',menVoice: 'audios/menAudios/iqbalLala.m4a',womenVoice: 'audios/womenAudios/001-(hamariweb.com).mp3'),
  //   CategoriesModel(name: 'Fever',image: 'assets/fever.png',menVoice: 'audios/menAudios/iqbalLala.m4a',womenVoice: 'audios/womenAudios/001-(hamariweb.com).mp3'),
  //   CategoriesModel(name: 'Feeling Fear',image: 'assets/fear.png',menVoice: 'audios/menAudios/iqbalLala.m4a',womenVoice: 'audios/womenAudios/001-(hamariweb.com).mp3'),
  //   CategoriesModel(name: 'Feeling Better',image: 'assets/better.png',menVoice: 'audios/menAudios/iqbalLala.m4a',womenVoice: 'audios/womenAudios/001-(hamariweb.com).mp3'),
  //   CategoriesModel(name: 'Feeling Bad',image: 'assets/bad.png',menVoice: 'audios/menAudios/iqbalLala.m4a',womenVoice: 'audios/womenAudios/001-(hamariweb.com).mp3'),
  //   CategoriesModel(name: 'Pain',image: 'assets/pain.png',menVoice: 'audios/menAudios/iqbalLala.m4a',womenVoice: 'audios/womenAudios/001-(hamariweb.com).mp3'),
  //   CategoriesModel(name: 'Don’t Know',image: 'assets/dontKnow.png',menVoice: 'audios/menAudios/iqbalLala.m4a',womenVoice: 'audios/womenAudios/001-(hamariweb.com).mp3'),
  // ];

  List<Map> newCategoriesList = [
    {
      'id': 0,
      'dataList': [
        CategoriesModel(
            name: 'Normal'.tr,
            image: 'assets/normal.png',
            menVoice: 'audios/menAudios/myConditions/normal.mp3',
            womenVoice:
            'audios/womenAudios/myConditions/normal.mp3'),
        CategoriesModel(
            name: 'Feeling Pain'.tr,
            image: 'assets/sweating.png',
            menVoice: selectedLang == 'Urdu'
                ? 'audios/menAudios/urduLanguage/myCondition/feelingPain.m4a'
                : 'audios/menAudios/myConditions/feelingPain.mp3',
            womenVoice: selectedLang == 'Urdu'
                ? 'audios/womenAudios/urduLanguage/myCondition/pain.m4a'
                : 'audios/womenAudios/myConditions/feelingPain.mp3'),
        CategoriesModel(
            name: 'Feeling Cold'.tr,
            image: 'assets/sweating.png',
            menVoice: selectedLang == 'Urdu'
                ? 'audios/menAudios/urduLanguage/myCondition/cold.m4a'
                : 'audios/menAudios/myConditions/feelingCold.mp3',
            womenVoice: selectedLang == 'Urdu'
                ? 'audios/womenAudios/urduLanguage/myCondition/cold.m4a'
                : 'audios/womenAudios/myConditions/feelingCold.mp3'),
        CategoriesModel(
            name: 'Sweating'.tr,
            image: 'assets/sweating.png',
            menVoice: selectedLang == 'Urdu'
                ? 'audios/menAudios/urduLanguage/myCondition/sweating.m4a'
                : 'audios/menAudios/myConditions/sweating.mp3',
            womenVoice: selectedLang == 'Urdu'
                ? 'audios/womenAudios/urduLanguage/myCondition/sweating.m4a'
                : 'audios/womenAudios/myConditions/sweating.mp3'),
        CategoriesModel(
            name: 'Fever'.tr,
            image: 'assets/sweating.png',
            menVoice: selectedLang == 'Urdu'
                ? 'audios/menAudios/urduLanguage/myCondition/fever.m4a'
                : 'audios/menAudios/myConditions/fever.mp3',
            womenVoice: selectedLang == 'Urdu'
                ? 'audios/womenAudios/urduLanguage/myCondition/fever.m4a'
                : 'audios/womenAudios/myConditions/fever.mp3'),
        CategoriesModel(
            name: 'Feeling Fear'.tr,
            image: 'assets/sweating.png',
            menVoice: selectedLang == 'Urdu'
                ? 'audios/menAudios/urduLanguage/myCondition/fear.m4a'
                : 'audios/menAudios/myConditions/feelingfear.mp3',
            womenVoice: selectedLang == 'Urdu'
                ? 'audios/womenAudios/urduLanguage/myCondition/fear.m4a'
                : 'audios/womenAudios/myConditions/feelingfear.mp3'),
        CategoriesModel(
            name: 'Feeling Better'.tr,
            image: 'assets/sweating.png',
            menVoice: selectedLang == 'Urdu'
                ? 'audios/menAudios/urduLanguage/myCondition/better.m4a'
                : 'audios/menAudios/myConditions/feelingBetter.mp3',
            womenVoice: selectedLang == 'Urdu'
                ? 'audios/womenAudios/urduLanguage/myCondition/better.m4a'
                : 'audios/womenAudios/myConditions/feelingBetter.mp3'),
        CategoriesModel(
            name: 'Feeling Bad'.tr,
            image: 'assets/sweating.png',
            menVoice: selectedLang == 'Urdu'
                ? 'audios/menAudios/urduLanguage/myCondition/bad.m4a'
                : 'audios/menAudios/myConditions/feelingBad.mp3',
            womenVoice: selectedLang == 'Urdu'
                ? 'audios/womenAudios/urduLanguage/myCondition/bad.m4a'
                : 'audios/womenAudios/myConditions/feelingBad.mp3'),
        CategoriesModel(
            name: 'Pain'.tr,
            image: 'assets/sweating.png',
            menVoice: selectedLang == 'Urdu'
                ? 'audios/menAudios/urduLanguage/myCondition/pain.m4a'
                : 'audios/menAudios/myConditions/pain.mp3',
            womenVoice: selectedLang == 'Urdu'
                ? 'audios/womenAudios/urduLanguage/myCondition/pain.m4a'
                : 'audios/womenAudios/myConditions/pain.mp3'),
        CategoriesModel(
            name: "Don't Know".tr,
            image: 'assets/sweating.png',
            menVoice: selectedLang == 'Urdu'
                ? 'audios/menAudios/urduLanguage/myCondition/dontKnow.m4a'
                : 'audios/menAudios/myConditions/dontKno.mp3',
            womenVoice: selectedLang == 'Urdu'
                ? 'audios/womenAudios/urduLanguage/myCondition/dontKnowf.m4a'
                : 'audios/womenAudios/myConditions/dontKno.mp3'),
      ]
    },
    {
      'id': 1,
      'dataList': [
        CategoriesModel(
            name: 'Normal'.tr,
            image: 'assets/medicinee.png',
            menVoice: 'audios/menAudios/need/normal.mp3',
            womenVoice: 'audios/womenAudios/need/normal.mp3'),
        CategoriesModel(
            name: 'Don’t Go'.tr,
            image: 'assets/dontGo.png',
            menVoice: selectedLang == 'Urdu'
                ? 'audios/womenAudios/urduLanguage/need/dontKnow.m4a'
                : 'audios/menAudios/need/dontGo.mp3',
            womenVoice: selectedLang == 'Urdu'
                ? 'audios/womenAudios/urduLanguage/need/dontGo.m4a'
                : 'audios/womenAudios/need/dontGo.mp3'),
        CategoriesModel(
            name: 'Sit me down'.tr,
            image: 'assets/sitmeDown.png',
            menVoice: selectedLang == 'Urdu'
                ? 'audios/womenAudios/urduLanguage/need/dontKnow.m4a'
                : 'audios/menAudios/need/sitMeDown.mp3',
            womenVoice: selectedLang == 'Urdu'
                ? 'audios/womenAudios/urduLanguage/need/sitDown.m4a'
                : 'audios/womenAudios/need/sitMeDown.mp3'),
        CategoriesModel(
            name: 'Lay me down'.tr,
            image: 'assets/laymeDown.png',
            menVoice: selectedLang == 'Urdu'
                ? 'audios/menAudios/urduLanguage/need/dontKnow.m4a'
                : 'audios/menAudios/need/layMeDown.mp3',
            womenVoice: selectedLang == 'Urdu'
                ? 'audios/womenAudios/urduLanguage/need/layDOwn.m4a'
                : 'audios/womenAudios/need/layMeDown.mp3'),
        CategoriesModel(
            name: 'Right crotch'.tr,
            image: 'assets/rightCrotch.png',
            menVoice: selectedLang == 'Urdu'
                ? 'audios/menAudios/urduLanguage/need/dontKnow.m4a'
                : 'audios/menAudios/need/rightCrotch.mp3',
            womenVoice: selectedLang == 'Urdu'
                ? 'audios/womenAudios/urduLanguage/need/right.m4a'
                : 'audios/womenAudios/need/rightCrotch.mp3'),
        CategoriesModel(
            name: 'Left Crotch'.tr,
            image: 'assets/leftCrotch.png',
            menVoice: selectedLang == 'Urdu'
                ? 'audios/menAudios/urduLanguage/need/dontKnow.m4a'
                : 'audios/menAudios/need/leftCrotch.mp3',
            womenVoice: selectedLang == 'Urdu'
                ? 'audios/womenAudios/urduLanguage/need/left.m4a'
                : 'audios/womenAudios/need/leftCrotch.mp3'),
        CategoriesModel(
            name: 'Remove the drap'.tr,
            image: 'assets/remmoveDrap.png',
            menVoice: selectedLang == 'Urdu'
                ? 'audios/menAudios/urduLanguage/need/dontKnow.m4a'
                : 'audios/menAudios/need/removeTheDrap.mp3',
            womenVoice: selectedLang == 'Urdu'
                ? 'audios/womenAudios/urduLanguage/need/drap.m4a'
                : 'audios/womenAudios/need/removeTheDrap.mp3'),
        CategoriesModel(
            name: 'Cushion'.tr,
            image: 'assets/cushion.png',
            menVoice: selectedLang == 'Urdu'
                ? 'audios/menAudios/urduLanguage/need/cushion.m4a'
                : 'audios/menAudios/need/cushion.mp3',
            womenVoice: selectedLang == 'Urdu'
                ? 'audios/womenAudios/urduLanguage/need/cushion.m4a'
                : 'audios/womenAudios/need/cushion.mp3'),
        CategoriesModel(
            name: 'Turn off the light'.tr,
            image: 'assets/light.png',
            menVoice: selectedLang == 'Urdu'
                ? 'audios/menAudios/urduLanguage/need/ofLight.m4a'
                : 'audios/menAudios/need/turnOffLight.mp3',
            womenVoice: selectedLang == 'Urdu'
                ? 'audios/womenAudios/urduLanguage/need/offLight.m4a'
                : 'audios/womenAudios/need/turnOfflight.mp3'),
        CategoriesModel(
            name: 'Turn on the light'.tr,
            image: 'assets/turnOnlight.png',
            menVoice: selectedLang == 'Urdu'
                ? 'audios/menAudios/urduLanguage/need/onLight.m4a'
                : 'audios/menAudios/need/turnOnnLight.mp3',
            womenVoice: selectedLang == 'Urdu'
                ? 'audios/womenAudios/urduLanguage/need/onLight.m4a'
                : 'audios/womenAudios/need/turnOnnlight.mp3'),
      ]
    },
    {
      'id': 2,
      'dataList': [
        CategoriesModel(
            name: 'Doctor'.tr,
            image: 'assets/dr.png',
            menVoice: 'audios/menAudios/callTo/doctor.mp3',
            womenVoice: 'audios/womenAudios/callTo/doctor.mp3'),
        CategoriesModel(
            name: 'Nurse'.tr,
            image: 'assets/nurse.png',
            menVoice: 'audios/menAudios/callTo/nurse.mp3',
            womenVoice: 'audios/womenAudios/callTo/nurse.mp3'),
        CategoriesModel(
            name: 'Nursing Assistant'.tr,
            image: 'assets/asstNurse.png',
            menVoice: 'audios/menAudios/callTo/nursingAsst.mp3',
            womenVoice: 'audios/womenAudios/callTo/nursingAsst.mp3'),
        CategoriesModel(
            name: 'Physiotherapist'.tr,
            image: 'assets/physco.png',
            menVoice: 'audios/menAudios/callTo/physio.mp3',
            womenVoice: 'audios/womenAudios/callTo/physio.mp3'),
        CategoriesModel(
            name: 'Family'.tr,
            image: 'assets/family.png',
            menVoice: 'audios/menAudios/callTo/family.mp3',
            womenVoice: 'audios/womenAudios/callTo/family.mp3'),
      ]
    },
    {
      'id': 3,
      'dataList': [
        CategoriesModel(
            name: 'Body'.tr,
            image: 'assets/body.png',
            menVoice: 'audios/menAudios/clean/body.mp3',
            womenVoice: 'audios/womenAudios/clean/body.mp3'),
        CategoriesModel(
            name: 'Teeth'.tr,
            image: 'assets/teeth.png',
            menVoice: 'audios/menAudios/clean/teeth.mp3',
            womenVoice: 'audios/womenAudios/clean/teeth.mp3'),
        CategoriesModel(
            name: 'Head'.tr,
            image: 'assets/head.png',
            menVoice: 'audios/menAudios/clean/head.mp3',
            womenVoice: 'audios/womenAudios/clean/head.mp3'),
        CategoriesModel(
            name: 'Hands'.tr,
            image: 'assets/hands.png',
            menVoice: 'audios/menAudios/clean/hands.mp3',
            womenVoice: 'audios/womenAudios/clean/hands.mp3'),
        CategoriesModel(
            name: 'Face'.tr,
            image: 'assets/face.png',
            menVoice: 'audios/menAudios/clean/face.mp3',
            womenVoice: 'audios/womenAudios/clean/face.mp3'),
        CategoriesModel(
            name: 'Legs'.tr,
            image: 'assets/legs.png',
            menVoice: 'audios/menAudios/clean/legs.mp3',
            womenVoice: 'audios/womenAudios/clean/legs.mp3'),
        CategoriesModel(
            name: 'Nose'.tr,
            image: 'assets/nose.png',
            menVoice: 'audios/menAudios/clean/nose.mp3',
            womenVoice: 'audios/womenAudios/clean/nose.mp3'),
      ]
    },
  ];
}
