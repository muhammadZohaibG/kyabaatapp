import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:howsfeeling/Components/Components.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/Need/NeedModel.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/Need/NeedController.dart';

import '../../../../../utils/AppColors.dart';
import '../../../Gender/GenderController.dart';

class NeedScreen extends StatelessWidget {
  String? name;
  String? img;
  int? id;

  NeedScreen({this.name, this.img, this.id});

  final genderController= Get.find<GenderController>();
  final controller= Get.put(NeedController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.appBarColor,
          leading: const Icon(Icons.notifications_active),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Image.asset(
                    img.toString(),
                    height: 50,
                    width: 50,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    name.toString(),
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),

        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisExtent: 220,
              // crossAxisCount: 2,
              childAspectRatio: 0.5,
              mainAxisSpacing: 10,
              crossAxisSpacing: 16,
              maxCrossAxisExtent: 220,
            ),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: controller.needModelList.length,
            itemBuilder: (cxt, i) {
              return kGridView(name: controller.needModelList[i].name,
                  img: controller.needModelList[i].image,
                  onTap: () {
                    if(genderController.isSelected==false){
                      controller.playAudio(controller.needModelList[i].menVOice.toString());
                    }else{
                      controller.playAudio(controller.needModelList[i].womenVOice.toString());


                    }
                  });
            })
    );
  }
}
