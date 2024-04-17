import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceButton extends StatefulWidget {
  const ServiceButton({
    super.key,
    required this.icon,
    required this.text,
    required this.navigate,
  });

  final String icon;
  final String text;
  final Widget navigate;

  @override
  ServiceButtonState createState() => ServiceButtonState();
}

class ServiceButtonState extends State<ServiceButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        fixedSize: const Size(220, 45),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return widget.navigate;
        }));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            widget.icon,
            width: 30,
            height: 30,
            color: Colors.black,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            widget.text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
