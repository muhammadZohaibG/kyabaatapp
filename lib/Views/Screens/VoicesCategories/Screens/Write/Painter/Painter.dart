import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomPainter  extends CustomPainter{
  List<Offset>? points=[];



  MyCustomPainter({this.points, });

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint background= Paint()..color=Colors.green;
    Rect rect=Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, background);
   // eraser= BlendMode.clear;
    Paint paint=Paint();
    paint.color=Colors.black;
    paint.strokeWidth=2.0;
    paint.isAntiAlias=true;
    paint.strokeCap=StrokeCap.round;



    for(int i=0;i<=points!.length-1;i++){
      // canvas.saveLayer(Rect.fromLTWH(0, 0, size.width, size.height), Paint());

      if(points![i]!=null && points![i+1]!=null ){
        canvas.drawLine(points![i+1], points![i], paint);

        print("LINEEEEEEEE");

      }
      else if(points![i]!=null && points![i+1]==null){
        canvas.drawPoints(PointMode.points, [points![i]], paint);

      }

    }
    // canvas.restore();

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    // throw UnimplementedError();
    return true;
  }
}