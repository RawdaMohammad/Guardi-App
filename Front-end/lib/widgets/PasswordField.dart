// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  PasswordField({
    super.key,
    this.text,
    this.hintText,
    this.obscureText = false,
    this.num = 0,
    required this.validator,
    required this.controller,
  });

  String? hintText, text;
  double? num;
  bool? obscureText;
  final String? Function(String?) validator;
  TextEditingController controller;

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isObscured = true;
  String? _errorMessage;

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
          padding: EdgeInsets.symmetric(horizontal: 10.0),
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
              obscureText: _isObscured,
              decoration: InputDecoration(
                hintText: widget.hintText,
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                  child: Icon(
                    _isObscured ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                ),
                filled: true, // Set filled to true
                fillColor: Colors.white,
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 125, 122, 122),
                ),
                enabledBorder: OutlineInputBorder(
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
