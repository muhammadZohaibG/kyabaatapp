import 'package:audioplayers/audioplayers.dart';

class Audios{
  
  final player = AudioPlayer();
  
  playAudio(String audioPath){
    player.play(AssetSource(audioPath));
  }

  stopAudio(){
    player.dispose();

  }
  
}