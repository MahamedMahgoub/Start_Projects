import 'dart:ui';

import 'package:flutter/material.dart';

class waveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(0, size.height - 40);
    var firstStart = Offset(size.width / 5, size.height - 10);
    var firstend = Offset(size.width / 2.25, size.height - 50);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstend.dx, firstend.dy);

    var seconfStart = Offset(size.width - (size.width / 5), size.height - 80);
    var seconfEnd = Offset(size.width, size.height - 15);

    path.quadraticBezierTo(
        seconfStart.dx, seconfStart.dy, seconfEnd.dx, seconfEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
