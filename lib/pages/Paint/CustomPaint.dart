import 'dart:ui';

import 'package:flutter/material.dart';

import 'Draawing.dart';

class MyCustomPainter extends CustomPainter {
  List<DrawingArea?> points = [];

  MyCustomPainter({required this.points});

  @override
  void paint(Canvas canvas, Size size) {
    Paint bg = Paint()..color = Colors.white;
    Rect reat = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(reat, bg);


    for (int i = 0; i < points.length - 1; i++) {

      if (points[i] != null && points[i + 1] != null) {
        Paint? paint=points[i]?.areaPaint;
        canvas.drawLine(points[i]!.point, points[i + 1]!.point, paint!);
      }
      else if (points[i] != null && points[i + 1] == null){
        Paint? paint=points[i]?.areaPaint;

        canvas.drawPoints(PointMode.points, [points[i]!.point], paint!);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}