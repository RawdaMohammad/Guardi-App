import 'package:flutter/material.dart';

class ClickableBox extends StatefulWidget {
  final String title;
  final String content;
  final double contHeight;
  final double boxHeight;

  const ClickableBox({
    Key? key,
    required this.title,
    required this.content,
    this.contHeight = 115,
    this.boxHeight = 60,
  }) : super(key: key);

  @override
  _ClickableBoxState createState() => _ClickableBoxState();
}

class _ClickableBoxState extends State<ClickableBox> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 360,
        height: _isExpanded ? widget.contHeight : widget.boxHeight,
        margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 239, 238, 238),
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: const Color(0xff423f3f)),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 108, 107, 107),
              blurRadius: 5.0,
              spreadRadius: 0,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: !_isExpanded,
                    child: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color(0xff423f3f),
                    ),
                  ),
                  Visibility(
                    visible: _isExpanded,
                    child: const Icon(
                      Icons.keyboard_arrow_up_outlined,
                      color: Color(0xff423f3f),
                    ),
                  ),
                ],
              ),
              Visibility(
                visible: _isExpanded,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    widget.content,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 1, 0, 0),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
