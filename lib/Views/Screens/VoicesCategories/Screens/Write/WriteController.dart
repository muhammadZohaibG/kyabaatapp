import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WriteController extends GetxController {
  RxList<Offset>? points = <Offset>[].obs;
  RxList<Offset>? eraserPoints = <Offset>[].obs;

  dynamic remover;
  double? strokeWidth=4;
bool isSelected =false;

 updateIsSelected(bool val){
   isSelected=val;
   print(isSelected);
   update();
 }





  removePainter(val){
    remover = val;
    update();
  }


   changeBrush(  final localPosition){
     double? strokeWidth =10;
      if ( isSelected == false ){

        var paint = Paint();
        paint.isAntiAlias = true;
        paint.color = Colors.black;
        paint.strokeWidth = strokeWidth;
        points!.add(localPosition);
        update();




      }else{
        var paint = Paint();
        paint.blendMode = BlendMode.clear;
        paint.color = Colors.white;
        paint.strokeWidth = strokeWidth;
        update();
      }

  }
}
