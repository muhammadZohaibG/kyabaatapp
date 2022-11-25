import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:howsfeeling/Audios/Audios.dart';
import 'package:howsfeeling/Views/Screens/Gender/GenderController.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/DiscussCategories/DiscussCategoriesController.dart';

import '../../../../../appBar/AppBar.dart';
import '../../../../../utils/AppColors.dart';

class DiscussCategoriesScreen extends StatelessWidget {
  String? name;

  DiscussCategoriesScreen({this.name});

  final controller = Get.put(DiscussCategoriesController());
  final genderController = Get.find<GenderController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: AppBarr(
            name: name,onTap: (){
            Audios().playAudio('audios/phoneBell.mp3');

          },
          )),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          children: [
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                mainAxisExtent: 70,
                // crossAxisCount: 2,
                childAspectRatio: 0.5,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                maxCrossAxisExtent: 220,
              ),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              // physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.discusscategoriesModelList.length,
              itemBuilder: (c, i) {
                return InkWell(
                  onTap: () {
                    if (genderController.isSelected == false) {
                      Audios().playAudio(
                          controller.discusscategoriesModelList[i].menVoice!);
                    } else {
                      Audios().playAudio(
                          controller.discusscategoriesModelList[i].womenVoice!);
                    }
                  },
                  child: Container(
                    // height: 100,
                    // width: 90,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        controller.discusscategoriesModelList[i].name
                            .toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600,color: AppColors.appColor),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
