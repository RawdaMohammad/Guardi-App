// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:guardi_app/screens/NaturalDisaster/instructionText.dart';

class Tornado extends StatelessWidget {
  const Tornado({super.key});

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
            'Tornado',
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
                  title: 'If you are indoors:',
                  instructions: [
                    '• The safest place in the home is the interior part of a basement.',
                    '• If you don’t have a basement, go to an inside room, without windows, on the lowest floor. This could be a center hallway, bathroom, or closet.',
                    '• Avoid taking shelter where there are heavy objects on the floor directly above you. Heavy objects, such as refrigerators or pianos, could fall though the floor if the tornado strikes your house.',
                    '• For added protection, get under something sturdy such as a heavy table or workbench. If possible, cover your body with a blanket, sleeping bag, or mattress, and protect your head with anything available—even your hands.',
                    ],
                ),
                SizedBox(height: 19.0),
                InstructionText(
                  title: 'If you are outdoors:',
                  instructions: [
                    '• If you live in a mobile home, go to a nearby building, preferably one with a basement.',
                    '• If there is no shelter nearby, lie flat in the nearest ditch, ravine, or culvert and shield your head with your hands.',
                    '• If you are on the beach, move to higher ground. An earthquake can cause a tsunami.',
                    '• Follow your tornado drill and proceed to your tornado shelter location quickly and calmly.'
                    '• Stay away from windows and don’t go to large open rooms such as cafeterias, gyms, or auditoriums.'
                    '• Long-span buildings, such as malls, theaters, and gyms, are especially dangerous because the roof is usually supported only by the outside walls. Most buildings like this cannot withstand the pressure from a tornado—they simply collapse.'
                    '• Get to the lowest level of the building (the basement if possible).'
                    '• Stay away from windows.'
                    '• If there isn’t time to get to a tornado shelter or to a lower level, try to get under a door frame or get up against something that will support or deflect falling debris. For instance, in a department store, get up against heavy shelving or counters. In a theater, get under the seats. Remember to protect your head.'


               ] ),
                SizedBox(height: 19.0),
         
              ],
            ),
          ),
        ),
      ),
    );
  }
}