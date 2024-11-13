import 'package:flutter/material.dart';
import 'dart:math' as math;

class SearchFilter extends StatelessWidget {
  const SearchFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60, // adjust the width as needed
      height: 60, // adjust the height as needed
      // decoration: BoxDecoration(
      //   color: Color(0xFFFF7E33), // Orange color (adjust if needed)
      //   borderRadius: BorderRadius.circular(16), // Rounded shape
      // ),
      child: CustomPaint(
          painter: CustomShapeClipper(),
          child: const Icon(
            Icons.filter_list,
            size: 30,
          )),
    );
  }
}

class CustomShapeClipper extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double degToRad(double deg) => deg * (math.pi / 180.0);
    final paint = Paint()
      ..color = Color(0xFFFF7E33) // Set the orange color
      ..style = PaintingStyle.fill;

    // Draw the rounded background shape
    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo((size.width / 2) + 10, 0)
      //   ..arcTo(
      //       Rect.fromLTWH(
      //           size.width / 2, 0, size.width , size.height ),
      //       degToRad(0),
      //       degToRad(70),
      //       true)
      // ..quadraticBezierTo(size.width/2, 0, size.width , size.height)
      ..lineTo(size.width + 10, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, 0)
      // ..lineTo(0, 0)
      // ..moveTo(size.width * 0.3, 0)
      // ..lineTo(size.width * 0.8, 0)
      // ..quadraticBezierTo(size.width, 0, size.width, size.height * 0.2)
      // ..lineTo(size.width, size.height * 0.8)
      // ..quadraticBezierTo(size.width, size.height, size.width * 0.8, size.height)
      // ..lineTo(size.width * 0.2, size.height)
      // ..quadraticBezierTo(0, size.height, 0, size.height * 0.8)
      // ..lineTo(0, size.height * 0.2)
      // ..quadraticBezierTo(0, 0, size.width * 0.3, 0)
      ..close();

    // canvas.drawLine(Offset(0, size.height/2), Offset(size.width, size.height/2), paint);

    canvas.drawPath(path, paint);
    // Draw the slider lines
  }

  @override
  bool shouldRepaint(oldDelegate) {
    return false;
  }
}
// class CustomShapeClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.lineTo(size.width, size.height);
//     path.lineTo(size.width/2, 0);
//     path.lineTo(0, size.height);
//     // path.lineTo(0, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// }
