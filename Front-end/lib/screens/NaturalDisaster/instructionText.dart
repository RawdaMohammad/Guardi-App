// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class InstructionText extends StatelessWidget {
  final String title;
  final List<String> instructions;

  InstructionText({required this.title, required this.instructions});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            color: Color(0xFF11606A),
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: instructions
              .map(
                (instruction) => Text(
                  '• $instruction',
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
