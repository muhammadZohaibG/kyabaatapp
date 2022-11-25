import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:howsfeeling/Localization/Localization.dart';
import 'package:howsfeeling/Views/Screens/Languages/LanguageController.dart';
import 'package:howsfeeling/utils/AppColors.dart';

import '../../../Audios/Audios.dart';
import '../../../appBar/AppBar.dart';
import 'LanguagesComponents.dart';

class Languages extends StatefulWidget {
  const Languages({Key? key}) : super(key: key);

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {

  final controller = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: AppBarr(
              name: 'Select Language'.tr,
              onTap: () {
                Audios().playAudio('audios/phoneBell.mp3');
              })),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LanguageComponents()
                .kLanguageCustomButton(name: 'English'.tr, onTap: () {
              controller.changeLanguage('English');
            }),
            const SizedBox(
              height: 20,
            ),
            LanguageComponents()
                .kLanguageCustomButton(name: 'Urdu'.tr, onTap: () {
             controller.changeLanguage('Urdu');
              print('Urdu');

            })
          ],
        ),
      ),
    );
  }
}
