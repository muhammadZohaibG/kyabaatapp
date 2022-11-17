import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:howsfeeling/Components/Components.dart';
import 'package:howsfeeling/Views/Screens/Gender/GenderController.dart';

import '../../../../../Audios/Audios.dart';
import '../../../../../utils/AppColors.dart';
import '../../../appBar/AppBar.dart';
import 'MyConditionController.dart';

class MyConditionScreen extends StatefulWidget {
  String? name;
  int? index;

  MyConditionScreen({this.name, this.index});

  @override
  State<MyConditionScreen> createState() => _MyConditionScreenState();
}

class _MyConditionScreenState extends State<MyConditionScreen> {
  // final myConditionController = Get.put(MyConditionController());
  final genderController = Get.find<GenderController>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    log(widget.index!);
  }

//by sajawal
  @override
  void dispose() {
    // TODO: implement dispose
    // _meri_keifiyatController.player.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(child: AppBarr(name: widget.name), preferredSize: Size.fromHeight(55)),
        // AppBar(
        //   elevation: 0,
        //   flexibleSpace: Container(
        //     decoration: const BoxDecoration(
        //       gradient: LinearGradient(
        //           begin: Alignment.topCenter,
        //           end: Alignment.bottomCenter,
        //           stops: [
        //             0.0,
        //             1.0
        //           ],
        //           colors: <Color>[
        //             AppColors.gredientColor2,
        //             AppColors.gredientColor1
        //           ]),
        //     ),
        //   ),
        //   automaticallyImplyLeading: true,
        //   title: Text(
        //     widget.name.toString(),
        //     style: const TextStyle(
        //         color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
        //   ),
        //   actions: [
        //     IconButton(
        //         icon: const Icon(Icons.notifications_active),
        //         onPressed: () {
        //           Audios().playAudio('audios/ring2-mp3-6551.mp3');
        //         }),
        //   ],
        // ),

        body: GetBuilder<MyConditionController>(
            init: MyConditionController(),
            builder: (controller) => Container(
                  margin: EdgeInsets.all(10),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        mainAxisExtent: 220,
                        // crossAxisCount: 2,
                        childAspectRatio: 0.5,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        maxCrossAxisExtent: 220,
                      ),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: controller
                          .newCategoriesList[widget.index!]['dataList'].length,
                      //myConditionList.length,
                      itemBuilder: (cxt, i) {
                        return kGridView(
                            name: controller
                                .newCategoriesList[widget.index!]['dataList']
                                    [i]
                                .name,
                            img: controller
                                .newCategoriesList[widget.index!]['dataList']
                                    [i]
                                .image,
                            onTap: () {
                              print(
                                  "object : ${genderController.isSelected.value}");

                              genderController.isSelected.value == false
                                  ? Audios().player.play(AssetSource(controller
                                      .newCategoriesList[widget.index!]
                                          ['dataList'][i]
                                      .menVoice
                                      .toString()))
                                  : Audios().player.play(AssetSource(controller
                                  .newCategoriesList[widget.index!]
                              ['dataList'][i]
                                  .womenVoice
                                  .toString()));

                              print('Hello');
                            });
                      }),
                )));
  }
}
