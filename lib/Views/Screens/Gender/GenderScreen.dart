import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:howsfeeling/Views/Screens/Gender/GenderComponents.dart';
import 'package:howsfeeling/Views/Screens/Gender/GenderController.dart';
import 'package:howsfeeling/Views/Screens/Home/Screens/HomeScreen.dart';
import 'package:howsfeeling/utils/AppColors.dart';

class GenderScreen extends StatelessWidget {
  GenderScreen({Key? key}) : super(key: key);
  GenderComponents _genderComponents = GenderComponents();
  final controller = Get.find<GenderController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 24.0, bottom: 15),
                child: Text('Who you are? ',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                    textAlign: TextAlign.start),
              ),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _genderComponents.kGenderContainer(
                        name: 'Male'.tr,
                        img: 'assets/male.png',
                        context: context,
                        borderColor: controller.isSelected.value == false
                            ? AppColors.appColor
                            : Colors.transparent,
                        onTapcall: () {
                          controller.maleSelected(false);
                          Get.to(()=>HomeScreen());
                        }),
                    _genderComponents.kGenderContainer(
                        name: 'Woman'.tr,
                        img: 'assets/female.png',
                        context: context,
                        borderColor: controller.isSelected.value == true
                            ? AppColors.appColor
                            : Colors.transparent,
                        onTapcall: () {
                          controller.femaleSelected(true);
                          Get.to(()=>HomeScreen());

                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
