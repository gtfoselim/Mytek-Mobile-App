
import 'dart:ui' as ui; // Import dart:ui with a prefix

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(ui.Size size) { // Use the prefixed Size from dart:ui
    var path = Path();
    path.lineTo(0, size.height);
    final firstCurve = Offset(0, size.height - 20);
    final lastCurve = Offset(30, size.height - 20);

    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

        final secondfirstCurve = Offset(0, size.height - 20);
    final secondlastCurve = Offset(size.width -30, size.height - 20);
     path.quadraticBezierTo(
        secondfirstCurve.dx, secondfirstCurve.dy, secondlastCurve.dx, secondlastCurve.dy);

        final thirdfirstCurve = Offset(size.width, size.height - 20);
    final thirdlastCurve = Offset(size.width, size.height );

    path.quadraticBezierTo(
        thirdfirstCurve.dx, thirdfirstCurve.dy, thirdlastCurve.dx, thirdlastCurve.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
