import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/MyConditions/MyConditionModel.dart';

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
            name: 'Normal',
            image: 'assets/normal.png',
            menVoice: 'audios/menAudios/myConditions/normal.mp3',
            womenVoice: 'audios/womenAudios/myConditions/normal.mp3'),
        CategoriesModel(
            name: 'Feeling Pain',
            image: 'assets/sweating.png',
            menVoice: 'audios/menAudios/myConditions/feelingPain.mp3',
            womenVoice:
                'audios/womenAudios/myConditions/feelingPain.mp3'),
        CategoriesModel(
            name: 'Feeling Cold',
            image: 'assets/sweating.png',
            menVoice: 'audios/menAudios/myConditions/feelingCold.mp3',
            womenVoice:
                'audios/womenAudios/myConditions/feelingCold.mp3'),
        CategoriesModel(
            name: 'Sweating',
            image: 'assets/sweating.png',
            menVoice: 'audios/menAudios/myConditions/sweating.mp3',
            womenVoice:
                'audios/womenAudios/myConditions/sweating.mp3'),
        CategoriesModel(
            name: 'Fever',
            image: 'assets/sweating.png',
            menVoice: 'audios/menAudios/myConditions/fever.mp3',
            womenVoice:
                'audios/womenAudios/myConditions/fever.mp3'),
        CategoriesModel(
            name: 'Feeling Fear',
            image: 'assets/sweating.png',
            menVoice: 'audios/menAudios/myConditions/feelingfear.mp3',
            womenVoice:
                'audios/womenAudios/myConditions/feelingfear.mp3'),
        CategoriesModel(
            name: 'Feeling Better',
            image: 'assets/sweating.png',
            menVoice: 'audios/menAudios/myConditions/feelingBetter.mp3',
            womenVoice:
                'audios/womenAudios/myConditions/feelingBetter.mp3'),
        CategoriesModel(
            name: 'Feeling Bad',
            image: 'assets/sweating.png',
            menVoice: 'audios/menAudios/myConditions/feelingBad.mp3',
            womenVoice:
                'audios/womenAudios/myConditions/feelingBad.mp3'),
        CategoriesModel(
            name: 'Pain',
            image: 'assets/sweating.png',
            menVoice: 'audios/menAudios/myConditions/pain.mp3',
            womenVoice:
                'audios/womenAudios/myConditions/pain.mp3'),
        CategoriesModel(
            name: "Don't Know",
            image: 'assets/sweating.png',
            menVoice: 'audios/menAudios/myConditions/dontKno.mp3',
            womenVoice:
                'audios/womenAudios/myConditions/dontKno.mp3'),
      ]
    },
    {
      'id': 1,
      'dataList': [
        CategoriesModel(
            name: 'Normal',
            image: 'assets/medicinee.png',
            menVoice: 'audios/menAudios/need/normal.mp3',
            womenVoice: 'audios/womenAudios/need/normal.mp3'),
        CategoriesModel(
            name: 'Don’t Go',
            image: 'assets/dontGo.png',
            menVoice: 'audios/menAudios/need/dontGo.mp3',
            womenVoice: 'audios/womenAudios/need/dontGo.mp3'),
        CategoriesModel(
            name: 'Sit me down',
            image: 'assets/sitmeDown.png',
            menVoice: 'audios/menAudios/need/sitMeDown.mp3',
            womenVoice: 'audios/womenAudios/need/sitMeDown.mp3'),
        CategoriesModel(
            name: 'Lay me down',
            image: 'assets/laymeDown.png',
            menVoice: 'audios/menAudios/need/layMeDown.mp3',
            womenVoice: 'audios/womenAudios/need/layMeDown.mp3'),
        CategoriesModel(
            name: 'Right crotch',
            image: 'assets/rightCrotch.png',
            menVoice: 'audios/menAudios/need/rightCrotch.mp3',
            womenVoice: 'audios/womenAudios/need/rightCrotch.mp3'),
        CategoriesModel(
            name: 'Left Crotch',
            image: 'assets/leftCrotch.png',
            menVoice: 'audios/menAudios/need/leftCrotch.mp3',
            womenVoice: 'audios/womenAudios/need/leftCrotch.mp3'),
        CategoriesModel(
            name: 'Remove the drap',
            image: 'assets/remmoveDrap.png',
            menVoice: 'audios/menAudios/need/removeTheDrap.mp3',
            womenVoice: 'audios/womenAudios/need/removeTheDrap.mp3'),
        CategoriesModel(
            name: 'Cushion',
            image: 'assets/cushion.png',
            menVoice: 'audios/menAudios/need/cushion.mp3',
            womenVoice: 'audios/womenAudios/need/cushion.mp3'),
        CategoriesModel(
            name: 'Turn off the light',
            image: 'assets/light.png',
            menVoice: 'audios/menAudios/need/turnOffLight.mp3',
            womenVoice: 'audios/womenAudios/need/turnOfflight.mp3'),
        CategoriesModel(
            name: 'Turn on the light',
            image: 'assets/turnOnlight.png',
            menVoice: 'audios/menAudios/need/turnOnnLight.mp3',
            womenVoice: 'audios/womenAudios/need/turnOnnlight.mp3'),
      ]
    },
    {
      'id': 2,
      'dataList': [
        CategoriesModel(
            name: 'Doctor',
            image: 'assets/dr.png',
            menVoice: 'audios/menAudios/callTo/doctor.mp3',
            womenVoice: 'audios/womenAudios/callTo/doctor.mp3'),
        CategoriesModel(
            name: 'Nurse',
            image: 'assets/nurse.png',
            menVoice: 'audios/menAudios/callTo/nurse.mp3',
            womenVoice: 'audios/womenAudios/callTo/nurse.mp3'),
        CategoriesModel(
            name: 'Nursing Assistant',
            image: 'assets/asstNurse.png',
            menVoice: 'audios/menAudios/callTo/nursingAsst.mp3',
            womenVoice: 'audios/womenAudios/callTo/nursingAsst.mp3'),
        CategoriesModel(
            name: 'Physiotherapist',
            image: 'assets/physco.png',
            menVoice: 'audios/menAudios/callTo/physio.mp3',
            womenVoice: 'audios/womenAudios/callTo/physio.mp3'),
        CategoriesModel(
            name: 'Family',
            image: 'assets/family.png',
            menVoice: 'audios/menAudios/callTo/family.mp3',
            womenVoice: 'audios/womenAudios/callTo/family.mp3'),
      ]
    },
    {
      'id': 3,
      'dataList': [
        CategoriesModel(
            name: 'Body',
            image: 'assets/body.png',
            menVoice: 'audios/menAudios/clean/body.mp3',
            womenVoice: 'audios/womenAudios/clean/body.mp3'),
        CategoriesModel(
            name: 'Teeth',
            image: 'assets/teeth.png',
            menVoice: 'audios/menAudios/clean/teeth.mp3',
            womenVoice: 'audios/womenAudios/clean/teeth.mp3'),
        CategoriesModel(
            name: 'Head',
            image: 'assets/head.png',
            menVoice: 'audios/menAudios/clean/head.mp3',
            womenVoice: 'audios/womenAudios/clean/head.mp3'),
        CategoriesModel(
            name: 'Hands',
            image: 'assets/hands.png',
            menVoice: 'audios/menAudios/clean/hands.mp3',
            womenVoice: 'audios/womenAudios/clean/hands.mp3'),
        CategoriesModel(
            name: 'Face',
            image: 'assets/face.png',
            menVoice: 'audios/menAudios/clean/face.mp3',
            womenVoice: 'audios/womenAudios/clean/face.mp3'),
        CategoriesModel(
            name: 'Legs',
            image: 'assets/legs.png',
            menVoice: 'audios/menAudios/clean/legs.mp3',
            womenVoice: 'audios/womenAudios/clean/legs.mp3'),
        CategoriesModel(
            name: 'Nose',
            image: 'assets/nose.png',
            menVoice: 'audios/menAudios/clean/nose.mp3',
            womenVoice: 'audios/womenAudios/clean/nose.mp3'),
      ]
    },
  ];
}
