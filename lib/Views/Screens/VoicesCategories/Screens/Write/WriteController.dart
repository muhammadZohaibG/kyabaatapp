import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WriteController extends GetxController {
  RxList<Offset>? points = <Offset>[].obs;

  dynamic remover;
  double? strokeWidth=4;
bool isSelected =false;

eraserr(){
}





  removePainter(val){
    remover = val;
    update();
  }
  void changeBrush(bool isErease){

    if ( isErease==false ){
     var paint = Paint();
      paint.blendMode = BlendMode.clear;
      paint.color = Colors.white;
      paint.strokeWidth = strokeWidth!;
      update();
    }else{
     var paint = Paint();
      paint.isAntiAlias = true;
      paint.color =Colors.black12;
      paint.strokeWidth = strokeWidth!;
      update();
    }
  }

  // void paint(Canvas canvas, Size size) {
  //   canvas.saveLayer(Rect.largest, Paint());
  //   canvas.drawRect(Rect.fromLTWH(0, 0, 80, 80), Paint()..color = Colors.red);
  //   canvas.drawCircle(Offset(40, 40), 40, Paint()..blendMode = BlendMode.clear);
  //   canvas.restore();
  // }
}
