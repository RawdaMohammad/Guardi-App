// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:guardi_app/screens/NaturalDisaster/instructionText.dart';

class Flood extends StatelessWidget {
  const Flood({super.key});

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
            'Flood',
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
                  title: ' If you are under a flood warning:',
                  instructions: [
                    '• Find safe shelter right away.',
                    '• Do not walk, swim or drive through flood waters. Turn Around, Don’t Drown!',
                    '• Remember, just six inches of moving water can knock you down, and one foot of moving water can sweep your vehicle away.',
                    '• Stay off bridges over fast-moving water. Fast-moving water can wash bridges away without warning.',
                    '• Depending on the type of flooding: 1.Evacuate if told to do so. 2.Move to higher ground. 3. a higher floor.Stay where you are.',
                  ],
                ),
                SizedBox(height: 19.0),
                InstructionText(
                  title: 'Staying Safe After a Flood:',
                  instructions: [
                    '• Pay attention to authorities for information and instructions. Return home only when authorities say it is safe.',
                    '• Wear heavy work gloves, protective clothing and boots during clean up and use appropriate face coverings or masks.',
                    '• Be aware that snakes and other animals may be in your house.',
                    '• Be aware of the risk of electrocution. Do not touch electrical equipment if it is wet or if you are standing in water. Turn off the electricity to prevent electric shock if it is safe to do so.',
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
