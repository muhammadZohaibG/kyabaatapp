import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:howsfeeling/Audios/Audios.dart';
import 'package:howsfeeling/Views/Screens/HandShakeBell/HandShakeBellScreen.dart';
import 'package:howsfeeling/Views/Screens/Home/Screens/HomeComponents.dart';
import 'package:howsfeeling/Views/Screens/Home/Screens/HomeController.dart';
import 'package:howsfeeling/Views/Screens/Home/Screens/HomeModel.dart';
import 'package:howsfeeling/Views/Screens/Languages/LanguagesScreen.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/DiscussCategories/DiscussCategoriesScreen.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/Pain/PainCategoriesScreen.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/Write/WriteScreen.dart';

import '../../../../Components/Components.dart';
import '../../../../utils/AppColors.dart';
import '../../VoicesCategories/Screens/MyConditions/MyConditionScreen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  HomeComponents _homeComponents = HomeComponents();

  // final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,

      appBar: AppBar(
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
          'Scenarios'.tr,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications_active),
                onPressed: (){
                  Get.to(()=>const HandShakeBell());
                  // Audios().playAudio('audios/phoneBell.mp3');
                },),
              IconButton(
                icon: const Icon(Icons.language),
                onPressed: (){
                  Get.off(()=>const Languages());
                },),
            ],
          ),


        ],
      ) ,

      /*   appBar: PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: AppBarr(name: 'Scenarios',onTap: (){Get.to(()=>HandShakeBell() );},)),*/

      body: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return SafeArea(
              child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisExtent: 190,
                  // crossAxisCount: 2,
                  childAspectRatio: 0.5,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  maxCrossAxisExtent: 220,
                ),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.homeModelList.length,
                itemBuilder: (cxt, i) {
                 
                   
                  return kGridViewContainer(
                      name: controller.homeModelList[i].name,
                      img: controller.homeModelList[i].img,
                      onTap: () {

                        // print("object : ${genderController.isSelected.value}");
                        //  if(i==0){
                        print(i);
                        if (i <= 3) {
                          Get.to(() => MyConditionScreen(
                                name: controller.homeModelList[i].name,
                                index: i,
                              ));
                        }

                        if (i == 4) {
                          Get.to(() => PainCategoriesScreen(
                                name: controller.homeModelList[i].name,
                              ));
                        }
                        if (i == 5) {
                          Get.to(() => DiscussCategoriesScreen(
                                name: controller.homeModelList[i].name,
                              ));
                        }
                        if (i == 6) {
                          Get.to(() => WriteScreen(
                                name: controller.homeModelList[i].name,
                              ));
                        }
                        //}
                      });
                }),
          )

              );
        }
      ),
    );
  }
}
