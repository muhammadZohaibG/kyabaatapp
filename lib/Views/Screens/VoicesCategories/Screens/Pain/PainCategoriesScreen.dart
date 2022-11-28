import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:howsfeeling/Views/Screens/Gender/GenderController.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/DiscussCategories/DiscussCategoriesController.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/Pain/painCategoriesController.dart';
import 'package:howsfeeling/utils/consts.dart';
import 'package:howsfeeling/utils/global.dart';

import '../../../../../Audios/Audios.dart';
import '../../../../../appBar/AppBar.dart';
import '../../../../../utils/appColors.dart';
import 'PainCategoriesComponents.dart';

class PainCategoriesScreen extends StatefulWidget {
  String? name;

  PainCategoriesScreen({this.name});

  @override
  State<PainCategoriesScreen> createState() => _PainCategoriesScreenState();
}

final controller = Get.put(PainCategoriesController());
final genderController = Get.find<GenderController>();

class _PainCategoriesScreenState extends State<PainCategoriesScreen> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.player.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: AppBarr(
              name: widget.name.toString(),
              onTap: () {
                Audios().playAudio('audios/phoneBell.mp3');
              })),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PainCategoriesComponents().kCustomButtom(
                    name: 'Numb'.tr,
                    onTap: () {
                      if (genderController.isSelected == false) {

                        selectedLang == 'Urdu'
                            ? controller
                                .playAudio('audios/menAudios/pain/numb.mp3')
                            : controller
                                .playAudio('audios/menAudios/pain/numb.mp3');
                      } else {

                        selectedLang == 'Urdu'
                            ? controller
                            .playAudio('audios/womenAudios/urduLanguage/pain/numb.mp3'):
                        controller
                            .playAudio('audios/womenAudios/pain/numb.mp3');
                      }
                    }),
                PainCategoriesComponents().kCustomButtom(
                    name: 'Itching'.tr,
                    onTap: () {
                      if (genderController.isSelected == false) {
                        selectedLang == 'Urdu'
                            ? controller
                            .playAudio('audios/menAudios/urduLanguage/pain/pain.mp3'):
                        controller
                            .playAudio('audios/menAudios/pain/itching.mp3');
                      } else {
                        selectedLang == 'Urdu'
                            ? controller
                            .playAudio('audios/womenAudios/urduLanguage/pain/Itching.mp3'):
                        controller
                            .playAudio('audios/womenAudios/pain/itching.mp3');
                      }
                    }),
                PainCategoriesComponents().kCustomButtom(
                    name: 'Pain'.tr,
                    onTap: () {
                      if (genderController.isSelected == false) {
                        selectedLang == 'Urdu'
                            ? controller
                            .playAudio('audios/menAudios/urduLanguage/pain/Itching.mp3'):
                        controller.playAudio('audios/menAudios/pain/pain.mp3');
                      } else {
                        selectedLang == 'Urdu'
                            ? controller
                            .playAudio('audios/womenAudios/urduLanguage/pain/pain.mp3'):
                        controller
                            .playAudio('audios/womenAudios/pain/pain.mp3');
                      }
                    }),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
              // borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              // image: const DecorationImage(image: AssetImage('assets/painnbody.png'),fit: BoxFit.contain,),
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/painnbody.png'.tr,
                  height:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.4
                          : MediaQuery.of(context).size.height * 0.35,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? 0
                          : MediaQuery.of(context).size.width * 0.37),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                          child: Text('Front'.tr,
                              style:  const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Colors.grey)),
                          onPressed: () {
                            if (genderController.isSelected == false) {
                              selectedLang == 'Urdu'
                                  ? controller
                                  .playAudio('audios/menAudios/urduLanguage/pain/pain.mp3'):
                              controller
                                  .playAudio('audios/menAudios/pain/front.mp3');
                            } else {
                              selectedLang == 'Urdu'
                                  ? controller
                                  .playAudio('audios/womenAudios/urduLanguage/pain/front.mp3'):
                              controller.playAudio(
                                  'audios/womenAudios/pain/front.mp3');
                            }
                          }),
                      TextButton(
                          child: Text('Back'.tr,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Colors.grey)),
                          onPressed: () {
                            if (genderController.isSelected == false) {
                              selectedLang == 'Urdu'
                                  ? controller
                                  .playAudio('audios/womenAudios/urduLanguage/pain/front.mp3'):
                              controller
                                  .playAudio('audios/menAudios/pain/back.mp3');
                            } else {
                              selectedLang == 'Urdu'
                                  ? controller
                                  .playAudio('audios/womenAudios/urduLanguage/pain/back.mp3'):
                              controller.playAudio(
                                  'audios/womenAudios/pain/back.mp3');
                            }
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PainCategoriesComponents().kCustomButtom1(
                  name: 'Extreme'.tr,
                  color: Colors.red,
                  onTap: () {
                    if (genderController.isSelected == false) {
                      selectedLang == 'Urdu'
                          ? controller
                          .playAudio('audios/womenAudios/urduLanguage/pain/back.mp3'):
                      controller.playAudio('audios/menAudios/pain/extreme.mp3');
                    } else {
                      selectedLang == 'Urdu'
                          ? controller
                          .playAudio('audios/womenAudios/urduLanguage/pain/extreme.mp3'):
                      controller
                          .playAudio('audios/womenAudios/pain/extreme.mp3');
                    }
                  }),
              PainCategoriesComponents().kCustomButtom1(
                  name: 'Medium'.tr,
                  color: Colors.orange,
                  onTap: () {
                    if (genderController.isSelected == false) {
                      selectedLang == 'Urdu'
                          ? controller
                          .playAudio('audios/womenAudios/urduLanguage/pain/extreme.mp3'):
                      controller.playAudio('audios/menAudios/pain/medium.mp3');
                    } else {
                      selectedLang == 'Urdu'
                          ? controller
                          .playAudio('audios/womenAudios/urduLanguage/pain/medium.mp3'):
                      controller
                          .playAudio('audios/womenAudios/pain/medium.mp3');
                    }
                  }),
              PainCategoriesComponents().kCustomButtom1(
                  name: 'Light'.tr,
                  color: Colors.green,
                  onTap: () {
                    if (genderController.isSelected == false) {
                      selectedLang == 'Urdu'
                          ? controller
                          .playAudio('audios/womenAudios/urduLanguage/pain/medium.mp3'):
                      controller.playAudio('audios/menAudios/pain/light.mp3');
                    } else {
                      selectedLang == 'Urdu'
                          ? controller
                          .playAudio('audios/womenAudios/urduLanguage/pain/light.mp3'):
                      controller.playAudio('audios/womenAudios/pain/light.mp3');
                    }
                  }),
            ],
          )),
        ]),
      ),
    );
  }
}
