import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

import 'NeedModel.dart';

class NeedController extends GetxController{
  final player =AudioPlayer();


  playAudio(String url){
    player.play(AssetSource(url));
    update();
  }
  List<NeedModel> needModelList=[
    NeedModel(name: 'مت جاؤ',image: 'assets/person.png',menVOice:  'menAudios/tone.mp3',womenVOice:'womenAudios/tones1.mp3'),
    NeedModel(name: 'دوا',image: 'assets/medicine.png',menVOice:  'menAudios/iqbalLala.m4a',womenVOice:'womenAudios/tones.mp3'),
    NeedModel(name: 'کمبل',image: 'assets/blanket.png',menVOice:  'menAudios/tone.mp3',womenVOice:'womenAudios/tones1.mp3'),
  ];
}