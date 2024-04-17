import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCircleButton extends StatefulWidget {
  const CustomCircleButton({
    super.key,
    required this.progressColor,
    required this.serviceText,
    required this.spaceWidth,
    required this.serviceNum,
    required this.icon,
    this.iconSize = 40,
    this.iconPadding = 0,
  });
  final Color progressColor;
  final String serviceText;
  final double spaceWidth;
  final String serviceNum;
  final String icon;
  final double iconSize;
  final double iconPadding;

  @override
  _CircleButtonDemoState createState() => _CircleButtonDemoState();
}

class _CircleButtonDemoState extends State<CustomCircleButton> {
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
        clickCount = 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
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
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20, left: 20),
            margin: const EdgeInsets.only(top: 35),
            width: screenWidth * 0.72,
            height: screenHeight * 0.15,
            decoration: BoxDecoration(
              color: widget.progressColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20.0),
              border:
                  Border.all(color: const Color(0xff6E6E6E).withOpacity(0.5)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      widget.serviceText,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: widget.spaceWidth,
                    ),
                    Container(
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
                        painter:
                            ProgressPainter(clickCount, widget.progressColor),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Press 3 times OR say ${widget.serviceNum}",
                    style:
                        const TextStyle(fontSize: 18, color: Color(0xff7D7A7A)),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            left: 25,
            child: Container(
              padding: EdgeInsets.only(bottom: widget.iconPadding),
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.progressColor,
              ),
              child: Center(
                child: SvgPicture.asset(
                  widget.icon,
                  width: widget.iconSize,
                  height: widget.iconSize,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
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
