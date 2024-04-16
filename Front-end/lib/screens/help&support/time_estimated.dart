// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:guardi_app/widgets/clickableBox.dart';

class TimeEstimated extends StatelessWidget {
  const TimeEstimated({super.key});

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
          backgroundColor: Colors.transparent,
          title: Text(
            'Time Estimated',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF7D7D7D), Color(0x00FFFFFF)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              tileMode: TileMode.clamp,
            ),
          ),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClickableBox(
                title: "ًHow time Estimated feature works?",
                content:
                    "It calculates the time for the trip and after the time is up and you haven't reached your destination, Guardi will notify you whether to notify one of your relatives (if you feel unsafe) or not.",
                contHeight: 205,
                boxHeight: 70,
              ),
              ClickableBox(
                title: "ًWhy to use Time Estimated?",
                content:
                    "If you want to go to a place and want one of your relatives (the first one) to know your location to take action in case something abnormal happens.",
                contHeight: 160,
              ),
              ClickableBox(
                title: "How to use Time Estimated?",
                content:
                    """1- You should first have at least one emergency contact added to guardi app (You can add it from profile page if you didn't add one)

2- Chooose the destination you want.""",
                contHeight: 215,
              ),
              ClickableBox(
                title: "How to confirm relatives notification (feel unsafe)?",
                content:
                    "A pop-up message appears, click 'Yes' or if you don't click any button within 60 seconds, Guardi will notify one of them (the first one).",
                contHeight: 185,
              ),
              ClickableBox(
                title: "How to cancel relatives notification?",
                content: "A pop-up message appears, just click 'No'.",
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
