import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:howsfeeling/Audios/Audios.dart';
import 'package:howsfeeling/Views/Screens/HandShakeBell/HandShakeBellScreen.dart';
import 'package:howsfeeling/Views/Screens/Home/Screens/HomeComponents.dart';
import 'package:howsfeeling/Views/Screens/Home/Screens/HomeController.dart';
import 'package:howsfeeling/Views/Screens/Home/Screens/HomeModel.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/DiscussCategories/DiscussCategoriesScreen.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/Pain/PainCategoriesScreen.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/Write/WriteScreen.dart';

import '../../../../Components/Components.dart';
import '../../../../utils/AppColors.dart';
import '../../VoicesCategories/Screens/MyConditions/MyConditionScreen.dart';
import '../../appBar/AppBar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  HomeComponents _homeComponents = HomeComponents();

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: AppBarr(name: 'Scenarios')),


      body: SafeArea(
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
            itemCount: homeModelList.length,
            itemBuilder: (cxt, i) {
              return kGridView(
                  name: homeModelList[i].name,
                  img: homeModelList[i].img,
                  onTap: () {
                    // print("object : ${genderController.isSelected.value}");
                    //  if(i==0){
                    print(i);
                    if (i <= 3) {
                      Get.to(() => MyConditionScreen(
                            name: homeModelList[i].name,
                            index: i,
                          ));
                    }

                    if (i == 4) {
                      Get.to(() => PainCategoriesScreen(
                            name: homeModelList[i].name,
                          ));
                    }
                    if(i==5){
                          Get.to(()=> DiscussCategoriesScreen(name: homeModelList[i].name,));
                    }
                    if(i==6){
                      Get.to(()=> WriteScreen(name: homeModelList[i].name,));
                    }
                    //}
                  });
            }),
      )
          // SingleChildScrollView(
          //   child: ListView.builder(
          //     shrinkWrap: true,
          //     physics: const NeverScrollableScrollPhysics(),
          //     scrollDirection: Axis.vertical,
          //     itemCount: homeModelList.length,
          //     itemBuilder: (context, index) {
          //       return InkWell(
          //         onTap: () {
          //           if (index == 0) {
          //             Get.to(MyConditionScreen(
          //               name: homeModelList[index].name,
          //               img: homeModelList[index].img,
          //               id: index,
          //             ));
          //           }
          //           if (index == 1) {
          //             Get.to(() => NeedScreen(
          //                   name: homeModelList[index].name,
          //                   img: homeModelList[index].img,
          //                   id: index,
          //                 ));
          //           }
          //           if (index == 2) {}
          //           if (index == 3) {}
          //           if (index == 4) {}
          //           if (index == 5) {}
          //           if (index == 6) {
          //             Get.to(()=>const LekhkrBatanaScreen());
          //           }
          //
          //           print('----------------${index}');
          //         },
          //         child: _homeComponents.kMenuItems(
          //             img: homeModelList[index].img,
          //             name: homeModelList[index].name,
          //             color: homeModelList[index].color),
          //       );
          //     },
          //   ),
          // ),
          ),
    );
  }
}
