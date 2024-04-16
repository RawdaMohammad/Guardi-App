// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:guardi_app/screens/help&support/helpCenter.dart';
import 'package:guardi_app/screens/help&support/reportIssue.dart';
import 'package:guardi_app/screens/help&support/terms&Conditions.dart';

class Help_Support extends StatelessWidget {
  const Help_Support({super.key});

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
            'Help & Support',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF7D7D7D), Color(0x00FFFFFF)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                tileMode: TileMode.clamp),
          ),
          child: ListView(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Help_Center();
                  }));
                },
                child: Container(
                  width: 343,
                  height: 55,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFF7F6F6),
                    borderRadius: BorderRadius.circular(10.0),
                    border:
                        Border.all(color: Color(0xffF423F3F).withOpacity(0.5)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF000000).withOpacity(0.3),
                        blurRadius: 10.0,
                        spreadRadius: 0,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(children: const [
                    Text(
                      'Help Center',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(flex: 1),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromARGB(255, 171, 169, 169),
                    ),
                  ]),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Terms_Conditions();
                  }));
                },
                child: Container(
                  width: 343,
                  height: 55,
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFF7F6F6),
                    borderRadius: BorderRadius.circular(10.0),
                    border:
                        Border.all(color: Color(0xffF423F3F).withOpacity(0.5)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF000000).withOpacity(0.3),
                        blurRadius: 10.0,
                        spreadRadius: 0,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(children: const [
                    Text(
                      'Terms & Conditions',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(flex: 1),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromARGB(255, 171, 169, 169),
                    ),
                  ]),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Repport_an_Issue();
                  }));
                },
                child: Container(
                  width: 343,
                  height: 55,
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFF7F6F6),
                    borderRadius: BorderRadius.circular(10.0),
                    border:
                        Border.all(color: Color(0xffF423F3F).withOpacity(0.5)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF000000).withOpacity(0.3),
                        blurRadius: 10.0,
                        spreadRadius: 0,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(children: const [
                    Text(
                      'Report an issue',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(flex: 1),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromARGB(255, 171, 169, 169),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
