
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/Write/Painter/PainterModel.dart';

class MyCustomPainter extends CustomPainter {
 /* List<Offset>? points = [];

  MyCustomPainter({
    this.points,
  });*/
  final List<PainterModel>? drawingPoints;

  MyCustomPainter({this.drawingPoints});

  List<Offset> offsetsList = [];

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint background = Paint()..color = Colors.white;
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, background);
    Paint paint = Paint();
      paint.color=Colors.black;
    paint.strokeWidth = 4.0;
    paint.isAntiAlias = true;
    paint.strokeCap = StrokeCap.round;
    // isSelected=false;
    //canvas.saveLayer(Rect.fromLTWH(0, 0, size.width, size.height), Paint());
    canvas.save();
    for (int i = 0; i < drawingPoints!.length-1; i++) {
      if (drawingPoints![i] != null && drawingPoints![i + 1] != null) {
        canvas.drawLine(drawingPoints![i].offset!, drawingPoints![i + 1].offset!,
            drawingPoints![i].paint!);

      } else if (drawingPoints![i] != null && drawingPoints![i + 1] == null) {
        offsetsList.clear();
        offsetsList.add(drawingPoints![i].offset!);

        canvas.drawPoints(
            PointMode.points, offsetsList, drawingPoints![i].paint!);
      }
    }

    /*for (int i = 0; i < points!.length - 1; i++) {
      if (points![i] != null && points![i + 1] != null) {
        canvas.drawLine(points![i + 1], points![i], paint);
        // canvas.saveLayer(Rect.fromLTWH(0, 0, size.width, size.height), Paint());

        // print("LINEEEEEEEE");

      } else if (points![i] != null && points![i + 1] == null) {
        canvas.drawPoints(PointMode.points, [points![i]], paint);
      }
    }*/

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    // throw UnimplementedError();
    return true;
  }
}




// import 'dart:ui';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/Write/Painter/PainterModel.dart';
// import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/Write/Painter/drawingBoard.dart';
//
// class MyCustomPainter extends CustomPainter {
//   // final List<PainterModel>? points;
//     List<Offset>? points = [];
//
//   MyCustomPainter({this.points});
//   // List<Offset>? points = [];
//
//
//
//       List<Offset> drawingPoints=[];
//
//
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     // TODO: implement paint
//     Paint background = Paint()..color = Colors.green;
//     Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
//     canvas.drawRect(rect, background);
//     Paint paint = Paint();
//
//     // paint.color=Colors.black;
//
//     paint.strokeWidth = 2.0;
//     paint.isAntiAlias = true;
//     paint.strokeCap = StrokeCap.round;
// canvas.save();
//
//     for (int i = 0; i < points!.length - 1; i++) {
//       if (points![i] != null && points![i + 1] != null) {
//          canvas.drawLine(points![i], points![i+1], Paint());
//          // canvas.drawLine(points![i].offset!, points![i+1].offset!, points![i+1].paint!);
//
//
//
//       } else if (points![i] != null && points![i + 1] == null) {
//
//         // drawingPoints.clear();
//         //    drawingPoints.add(points![i]);
//
//
//         canvas.drawPoints(
//             PointMode.points, drawingPoints, Paint());
//       }
//     }
//
//     canvas.restore();
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     // TODO: implement shouldRepaint
//     // throw UnimplementedError();
//     return true;
//   }
// }
