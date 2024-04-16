// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class RequestVolunteer extends StatelessWidget {
  const RequestVolunteer({super.key});

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
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color(0xFF0066FF),
          onPressed: () {},
          label: const Text(
            'Request',
            style: TextStyle(fontSize: 18),
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
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 27, top: 20),
                child: Text(
                  "What is the reason of the request?",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                width: 343,
                height: 120,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xffB0B0B0).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextFormField(
                  textInputAction: TextInputAction.newline,
                  keyboardType: TextInputType.multiline,
                  maxLines: 50,
                  decoration: InputDecoration(
                    hintText: 'Reason of the request',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 27),
                child: Text(
                  "After finishing click 'Request' button to request a volunteer.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
