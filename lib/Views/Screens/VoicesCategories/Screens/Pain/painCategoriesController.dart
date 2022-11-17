import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

class PainCategoriesController extends GetxController{
  final player =AudioPlayer();


  playAudio(String url){
    player.play(AssetSource(url));
    update();
  }
}