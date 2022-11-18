import 'package:flutter/animation.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/Write/Painter/Painter.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/Write/WriteController.dart';
import 'package:howsfeeling/utils/AppColors.dart';

import '../../../appBar/AppBar.dart';
import 'WriteComponents.dart';

class WriteScreen extends StatelessWidget {
  String? name;

  WriteScreen({this.name});

// final controller= Get.put(WriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: PreferredSize(
          child: AppBarr(name: name!), preferredSize: Size.fromHeight(55)),
      body: GetBuilder<WriteController>(
          init: WriteController(),
          builder: (controller) {
            return SafeArea(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(
                            child: WriteComponents().kHeading(
                                img: 'assets/pencil.png',
                                name: 'Write',
                                onTap: () {
                                  controller.isSelected=false;

                                  print(
                                      "****** ${controller.points!.value.toSet()}");
                                },
                                context: context)),
                        Expanded(
                            child: WriteComponents().kHeading(
                                img: 'assets/erase.png',
                                name: 'Erase',
                                onTap: () {
                                  controller.isSelected=true;
                                  print('Removerrrrrrrrrrrr');
                                  // controller.points!.value.removeWhere((element) => element.Offset());
                                },
                                context: context)),
                        Expanded(
                            child: WriteComponents().kHeading(
                                img: 'assets/new.png',
                                name: 'New Page',
                                onTap: () {
                                  controller.points!.value.clear();
                                },
                                context: context)),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: GestureDetector(
                        onPanDown: (det) {
                          if (controller.isSelected == false) {
                            controller.points!.value.add(det.localPosition);
                            controller.update();
                          } else {
                            BlendMode.clear;
                          }
                        },
                        onPanUpdate: (det) {
                          if (controller.isSelected == false) {

                            controller.points!.value.add(det.localPosition);
                            controller.update();
                            Canvas? cavas;
                            cavas!.saveLayer(Rect.fromLTWH(0, 0, 400, 400), Paint());

                          } else {
                            Canvas? cavas;
                            cavas!.restore();
                          }
                        },
                        onPanEnd: (det) {
                          if (controller.isSelected == false) {

                            controller.points!.value.add(Offset.infinite);
                            controller.update();
                            Canvas? cavas;
                            cavas!.saveLayer(Rect.fromLTWH(0, 0, 400, 400), Paint());

                          } else {
                            Canvas? cavas;
                            cavas!.restore();
                          }

                          print('***********');
                        },
                        child: CustomPaint(
                            painter: MyCustomPainter(
                          points: controller.points!.value,
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
