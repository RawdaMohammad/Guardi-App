import 'package:flutter/material.dart';

class DateField extends StatefulWidget {
  DateField({
    Key? key,
    this.text,
    this.hintText,
    this.obscureText = false,
    this.num = 0,
    required this.validator,
    required this.controller,
  }) : super(key: key);

  final String? hintText;
  final String? text;
  final double? num;
  final bool? obscureText;
  final String? Function(String?) validator;
  TextEditingController controller;

  @override
  CustomTextFieldState createState() => CustomTextFieldState();
}

class CustomTextFieldState extends State<DateField> {
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
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                hintText: widget.hintText,
                prefixIcon: const Icon(Icons.calendar_today),
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 125, 122, 122),
                ),
                filled: true, // Set filled to true
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
              readOnly: true,
              onTap: () {
                selectDate();
              },
            ),
          ),
        ),
      ],
    );
  }

  Future<void> selectDate() async {
    DateTime current = DateTime.now();
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime(2000),
        firstDate: DateTime(current.year - 90),
        lastDate: DateTime(current.year - 15));
    if (picked != null) {
      setState(() {
        widget.controller.text = picked.toString().split(" ")[0];
      });
    }
  }
}
