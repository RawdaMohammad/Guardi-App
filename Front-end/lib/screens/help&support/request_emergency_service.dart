// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:guardi_app/widgets/clickableBox.dart';

class Request extends StatelessWidget {
  const Request({super.key});

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
            'Request Emergency Service',
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Text(
                  "Request emergency using button",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF11606A),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ClickableBox(
                title: "How to request emergency using the button?",
                content: "Click 3 successive times on the button.",
              ),
              ClickableBox(
                title: "How to cancel button request?",
                content:
                    "By clicking the cancel button the request will be canceled.",
              ),
              ClickableBox(
                title: "How to confirm button request?",
                content:
                    "By clicking the confirm button the request will be sent to emergency service.",
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, top: 30, left: 20),
                child: Text(
                  "Request emergency by voice",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF11606A),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ClickableBox(
                title: "How to request emergency by voice?",
                content:
                    "By saying specific word you could request the service. Say 'Police' to request police service, 'Ambulance' to request an ambulance or 'fire' to request fire.",
                contHeight: 180,
              ),
              ClickableBox(
                title: "How to cancel voice request?",
                content: "By clicking 'cancel request' before the time is up.",
              ),
              ClickableBox(
                title: "How to confirm voice request?",
                content:
                    "You don't need to do anything, the request will be confirmed after the time is up, which is one minute.",
                contHeight: 130,
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
