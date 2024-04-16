// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:guardi_app/widgets/clickableBox.dart';

class HelpRequestVolunteer extends StatelessWidget {
  const HelpRequestVolunteer({super.key});

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
            'Request Volunteer',
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
                title: "ًWhen to request a volunteer?",
                content:
                    "If you in a situation doesn't require emergency services.",
                contHeight: 120,
              ),
              ClickableBox(
                title: "ًHow to request a volunteer?",
                content:
                    "In the home page from more services section you can click 'Request Volunteer' button and write the reason of the request then click 'Request'.",
                contHeight: 160,
              ),
              ClickableBox(
                title: "How to be a volunteer?",
                content:
                    "In the home page at the top right, you can switch to a volunteer mode.",
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
