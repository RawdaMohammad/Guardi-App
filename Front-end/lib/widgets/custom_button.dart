import 'dart:async';
import 'package:flutter/material.dart';

class CircleButtonDemo extends StatefulWidget {
  const CircleButtonDemo({super.key, required this.progressColor});
  final Color progressColor;
  @override
  _CircleButtonDemoState createState() => _CircleButtonDemoState();
}

class _CircleButtonDemoState extends State<CircleButtonDemo> {
  int clickCount = 0;

  Timer? _timer;

  // @override
  // void dispose() {
  //   _timer?.cancel();
  //   super.dispose();
  // }

  void _startTimer(int timer) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: timer), () {
      setState(() {
        clickCount = 0; // Reset click count after 3 seconds
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          clickCount = (clickCount + 1) % 4;
          if (clickCount == 3) {
            _startTimer(400);
          } else {
            _startTimer(30000);
          }
        });
      },
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: const Color(0xffCACACA),
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0xff777777),
            width: 6.5,
          ),
        ),
        child: CustomPaint(
          painter: ProgressPainter(clickCount, widget.progressColor),
        ),
      ),
    );
  }
}

class ProgressPainter extends CustomPainter {
  final int stage;
  final Color progressColor;
  ProgressPainter(this.stage, this.progressColor);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = progressColor 
      ..strokeWidth = 7.5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    double progress = (stage / 3) * 2 * 3.14;
    canvas.drawArc(
      Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: size.width / 1.7,
      ),
      -3.14 / 2,
      progress,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
