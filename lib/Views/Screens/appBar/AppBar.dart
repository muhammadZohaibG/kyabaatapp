import 'package:flutter/material.dart';
import 'package:howsfeeling/Audios/Audios.dart';

import '../../../utils/AppColors.dart';

class AppBarr extends StatelessWidget {
  String? name;
    AppBarr({Key? key,  this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration:  const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
                  0.0,
                  1.0
                ],
                colors: <Color>[
                  AppColors.gredientColor2,
                  AppColors.gredientColor1
                ]),
          ),
        ),
        automaticallyImplyLeading: true,
        title:   Text(
          name!,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
              icon: const Icon(Icons.notifications_active),
              onPressed: () {
                Audios().playAudio('audios/ring2-mp3-6551.mp3');
              }),
        ],
      );

  }
}
