import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:howsfeeling/Views/Screens/Home/Screens/HomeComponents.dart';
import 'package:howsfeeling/Views/Screens/Home/Screens/HomeController.dart';
import 'package:howsfeeling/Views/Screens/Home/Screens/HomeModel.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/MeriKeifiyat/Meri_KeifiyatScreen.dart';

import '../../../../utils/AppColors.dart';
import '../../VoicesCategories/Screens/MujhyChahye/Mujhy_ChahyeScreen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  HomeComponents _homeComponents = HomeComponents();

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        leading: const Icon(Icons.notifications_active),
        centerTitle: true,
        title: Image.asset(
          'assets/splashScreen.png',
          height: 50,
          width: 50,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.lock_clock_rounded),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.green,
          elevation: 0,
          child: Obx(
           ()=> Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Expanded(
                      child: _homeComponents.kBottomButtomVoices(
                          onTapFunction:(){controller.onTapMenCallFunction(false);} ,
                          name: 'مرد کی آواز',
                          img: 'assets/young-man.png',
                          color: controller.isSelected.value == false
                              ? Colors.blue
                              : Colors.blue.shade100)),
                  Expanded(
                      child: _homeComponents.kBottomButtomVoices(
                          onTapFunction:(){ controller.onTapWomenCallFunction(true);},
                          name: 'عورت کی آواز',
                          img: 'assets/girl.png',
                          color: controller.isSelected.value == true
                              ? Colors.blueAccent
                              : Colors.blueAccent.shade100)),

              ],
            ),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: homeModelList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  if (index == 0) {
                    Get.to(MeriKefiyatScreen(
                      name: homeModelList[index].name,
                      img: homeModelList[index].img,
                      id: index,
                    ));
                  }
                  if (index == 1) {
                    Get.to(() => Mujhy_ChahyeScreen(
                          name: homeModelList[index].name,
                          img: homeModelList[index].img,
                          id: index,
                        ));
                  }
                  if (index == 2) {}
                  if (index == 3) {}
                  if (index == 4) {}

                  print('----------------${index}');
                },
                child: _homeComponents.kMenuItems(
                    img: homeModelList[index].img,
                    name: homeModelList[index].name,
                    color: homeModelList[index].color),
              );
            },
          ),
        ),
      ),
    );
  }
}
