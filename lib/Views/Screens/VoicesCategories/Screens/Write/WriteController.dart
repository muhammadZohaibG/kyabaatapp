import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/Write/Painter/PainterModel.dart';

class WriteController extends GetxController {


  RxList<PainterModel>? drawingPoint = <PainterModel>[].obs;

  Color? selectedColor = Colors.black;
  double? strokeWidth=3;

  dynamic remover;

bool isSelected =false;

 updateIsSelected(bool val){
   isSelected=val;
   print(isSelected);
   update();
 }

 updateEraser(Color color){
   selectedColor= color;
   update();
 }

 onPanoption(val){
   drawingPoint!.add(PainterModel(
     offset: val,
     paint: Paint()

       ..isAntiAlias = true
       ..strokeCap = StrokeCap.round
       ..color =   selectedColor!
       ..strokeWidth =  strokeWidth!,

   ));
   update();
 }





}
