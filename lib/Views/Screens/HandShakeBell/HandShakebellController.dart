import 'dart:async';
import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sensors_plus/sensors_plus.dart';

import '../../../Audios/Audios.dart';

class HandShakeBellController extends GetxController {
  double x = 0, y = 0, z = 0;
  Color? backgroundColor;

  @override
  void onInit() {
    // TODO: implement onInit
    startBell();
    super.onInit();
  }

  final player = AudioPlayer();

  playAudio(String url) {
    player.play(AssetSource(url));
    update();
  }

  final streamSubscriptions = <StreamSubscription<dynamic>>[];

  startBell() {
    streamSubscriptions.add(
      accelerometerEvents.listen((AccelerometerEvent event) {
        // print('Zzzzzzzzz:${  event.z }');
        // print('Xxxxx:${ event.x }');
        // print('Yyyyyy:${ event.y }');
        x = event.x;
        y = event.y;
        z = event.z;
        // Manipulate the UI here, something like:
        if (z < -6) {
          backgroundColor = Colors.green;
          update();
        } else if (z > 6) {
          backgroundColor = Colors.white;
          update();
        } else {
          backgroundColor = Colors.indigo;
          playAudio('audios/shakeAlaram/shakeAlaram.mp3');
          update();
        }
      }),
    );
  }
}
