import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

class Meri_KeifiyatController extends GetxController {


  // final AudioPlayer _audioPlayer = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  String? currentAudio = '';
  bool isPlaying = false;
    final player =AudioPlayer();


  playAudio(String url){
    player.play(AssetSource(url));
    update();
  }

}
