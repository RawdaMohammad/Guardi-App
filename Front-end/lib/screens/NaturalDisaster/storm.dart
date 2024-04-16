// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:guardi_app/screens/NaturalDisaster/instructionText.dart';

class Storm extends StatelessWidget {
  const Storm({super.key});

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
            'Storm',
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
                  title: 'When a storm is forecast:',
                  instructions: [
                    '• Bring inside or tie down anything that strong winds could break or pick up. If you have a trampoline, turn it upside down to minimise the surface area exposed to wind.',
                    '• Remove any debris or loose items from around your property. Branches and firewood can become missiles in strong winds.',
                    '• Bring pets indoors. They can get unsettled by storms and it is more comforting and safer for them to be with you.',
                    '• Check on your neighbours and anyone who might need your help.',
                  ],
                ),
                SizedBox(height: 19.0),
                InstructionText(
                  title: 'During a storm:',
                  instructions: [
                    "• Stay inside. Don't walk around outside. Don't drive unless absolutely necessary."
                    '• Close exterior and interior doors and windows. Pull curtains and blinds over windows. This could prevent injury from flying glass if the window breaks.',
                    '• Stay informed during an emergency. Listen to the radio or follow your Civil Defence Emergency Management Group online. Follow the instructions of civil defence and emergency services.',
                    '• Avoid bathtubs, water taps, and sinks. Metal pipes and plumbing can conduct electricity if struck by lightning. Use your water from your emergency supplies.',
                    '• Unplug small appliances that may be affected by electrical power surges. If you lose power, unplug major appliances. This will reduce the power surge and possible damage when power is restored.',
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
