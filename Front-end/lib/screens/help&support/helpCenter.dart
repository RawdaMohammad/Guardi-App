// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:guardi_app/screens/help&support/help_request_volunteer.dart';
import 'package:guardi_app/screens/help&support/time_estimated.dart';
import 'package:guardi_app/screens/help&support/request_emergency_service.dart';
import 'package:guardi_app/screens/help&support/support.dart';

class Help_Center extends StatelessWidget {
  const Help_Center({super.key});

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
            'Help Center',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color(0xFF0066FF),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Support();
            }));
          },
          icon: const Icon(Icons.question_answer_outlined),
          label: const Text(
            'Support',
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
              Container(
                width: 343,
                height: 120,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xffB0B0B0).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Text(
                      'Need some help?',
                      style: TextStyle(
                        color: Color(0xff423F3F),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 234,
                      height: 37,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFFF2F1F1),
                        borderRadius: BorderRadius.circular(7.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF000000).withOpacity(0.3),
                            blurRadius: 8.0,
                            spreadRadius: 0,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: TextField(
                        textAlignVertical: TextAlignVertical(y: 0.9),
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          hintText: 'Search something ... ',
                          suffixIcon: Icon(Icons.search),
                          hintStyle: TextStyle(
                            color: Color(0xff7C7676).withOpacity(0.7),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Use any simple text',
                      style: TextStyle(
                          color: Color(0xff423F3F),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Request();
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
                        Border.all(color: Color(0xff423f3f).withOpacity(0.5)),
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
                      'Request Emergency Service',
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
                    return TimeEstimated();
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
                        Border.all(color: Color(0xff423f3f).withOpacity(0.5)),
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
                      'Time Estimated',
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
                    return HelpRequestVolunteer();
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
                        Border.all(color: Color(0xff423f3f).withOpacity(0.5)),
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
                      'Request Volunteer',
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
              // ClickableBox(
              //   title: 'Time Estimated',
              //   content:
              //       'First, you must already have at least one emergency contact. Choose the destination and then start the trip, the time of the trip will be estimated.',
              // ),
              // ClickableBox(
              //   title: 'Request Volunteer',
              //   content:
              //       "Click on 'Request Volunteer' then write the reason of the request.",
              // ),
              Container(
                width: 343,
                height: 120,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFF7F6F6),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 2, bottom: 8),
                      child: Text(
                        'Frequently asked questions (FAQs)',
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 2, bottom: 8),
                          child: Text(
                            'Frequently asked questions',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Spacer(flex: 1),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Color(0xFFABA9A9),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
