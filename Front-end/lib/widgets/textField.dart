import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    Key? key,
    this.text,
    this.hintText,
    this.inputType = TextInputType.text,
    this.obscureText = false,
    this.icon,
    this.num = 0,
    required this.validator,
    required this.controller,
  }) : super(key: key);

  TextInputType inputType;
  final String? hintText;
  final String? text;
  final Icon? icon;
  final double? num;
  final bool? obscureText;
  final String? Function(String?) validator;
  TextEditingController controller;

  @override
  CustomTextFieldState createState() => CustomTextFieldState();
}

class CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 15, bottom: 10),
          child: Text(
            widget.text!,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 22,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: TextFormField(
              controller: widget.controller,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: widget.validator,
              textAlignVertical: const TextAlignVertical(y: 0.5),
              textAlign: TextAlign.left,
              obscureText: widget.obscureText!,
              keyboardType: widget.inputType,
              decoration: InputDecoration(
                hintText: widget.hintText,
                prefixIcon: widget.icon,
                hintStyle: const TextStyle(
                  color: Color(0xFF7D7A7A),
                ),
                filled: true, 
                fillColor: Colors.white,
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(color: Colors.transparent),
                ), 
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
