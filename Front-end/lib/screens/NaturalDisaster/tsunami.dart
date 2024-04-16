// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:guardi_app/screens/NaturalDisaster/instructionText.dart';

class Tsunami extends StatelessWidget {
  const Tsunami({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0,
          backgroundColor: Color.fromARGB(0, 255, 255, 255),
          title: Text(
            'Tsunami',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(19.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InstructionText(
                  title: 'If you are under a tsunami warning:',
                  instructions: [
                    '• If caused by an earthquake, Drop, Cover, then Hold On to protect yourself from the earthquake first.',
                    '• Get to high ground as far inland as possible.',
                    '• Be alert to signs of a tsunami, such as a sudden rise or draining of ocean waters.',
                    '• Listen to emergency information and alerts. Always follow the instructions from local emergency managers.',
                    '• Evacuate: DO NOT wait! Leave as soon as you see any natural signs of a tsunami or receive an official tsunami warning.',
                    '• If you are in a boat, go out to sea.',     
                    '• If you become injured or sick and need medical attention, contact your healthcare provider and shelter in place, if possible.Use Guardi App if you are experiencing a medical emergency.',                
             ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
