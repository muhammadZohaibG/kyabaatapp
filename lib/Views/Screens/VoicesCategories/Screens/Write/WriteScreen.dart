import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/Write/Painter/Painter.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/Write/Painter/PainterModel.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/Write/WriteController.dart';
import 'package:howsfeeling/utils/AppColors.dart';
import '../../../../../Audios/Audios.dart';
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
          preferredSize: const Size.fromHeight(55),
          child: AppBarr(
              name: name!,
              onTap: () {
                Audios().playAudio('audios/ring2-mp3-6551.mp3');
              })),
      body: GetBuilder<WriteController>(
          init: WriteController(),
          builder: (controller) {
            return SafeArea(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(
                            child: WriteComponents().kCustomButton(
                                img: 'assets/pencil.png',
                                name: 'Write',
                                onTap: () {
                                  controller.updateEraser(Colors.black);
                                },
                                context: context)),
                        Expanded(
                            child: WriteComponents().kCustomButton(
                                img: 'assets/erase.png',
                                name: 'Erase',
                                onTap: () {
                                  controller.updateEraser(Colors.white);
                                },
                                context: context)),
                        Expanded(
                            child: WriteComponents().kCustomButton(
                                img: 'assets/new.png',
                                name: 'New Page',
                                onTap: () {
                                  controller.drawingPoint!.value.clear();
                                  controller.updateEraser(Colors.black);
                                },
                                context: context)),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery
                        .of(context)
                        .orientation == Orientation.portrait ? MediaQuery
                        .of(context)
                        .size
                        .height * 0.75 :MediaQuery
                        .of(context)
                        .size
                        .height * 0.55 ,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: GestureDetector(
                        onPanDown: (det) {
                          controller.onPanoption(det.localPosition);
                        },
                        onPanUpdate: (det) {
                          controller.onPanoption(det.localPosition);
                        },
                        onPanEnd: (det) {
                          controller.drawingPoint!.add(PainterModel(
                              offset: Offset.infinite, paint: Paint()));

                          controller.update();
                        },
                        child: CustomPaint(
                            painter: MyCustomPainter(
                              drawingPoints: controller.drawingPoint!.value,
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
