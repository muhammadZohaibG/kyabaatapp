import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
class Audios extends StatefulWidget {
  const Audios({Key? key}) : super(key: key);

  @override
  State<Audios> createState() => _AudiosState();
}

class _AudiosState extends State<Audios> {
  @override
  Widget build(BuildContext context) {
    AudioPlayer audioPlayer = AudioPlayer(    );

    Duration duration = new Duration();
    Duration position = new Duration();
    @override
    void initState() {
      // TODO: implement initState
      super.initState();
      // playMusic(widget.url_.toString());
    }
    @override
    void dispose() {
      audioPlayer.stop();
    }
    return Container();
  }
}
