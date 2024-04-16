// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

class FeedBackState extends StatefulWidget {
  const FeedBackState({Key? key}) : super(key: key);

  @override
  FeedBack createState() => FeedBack();
}

class FeedBack extends State<FeedBackState> {
  String type = "Other";
  Widget CustomRadioButton(String text, double width) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          type = text;
        });
      },
      style: OutlinedButton.styleFrom(
        fixedSize: Size(width, 50),
        side: BorderSide(
          color: (type == text)
              ? Colors.transparent
              : Color.fromARGB(255, 139, 134, 134),
        ),
        backgroundColor: (type == text)
            ? Color(0xffAEAEAE)
            : Color.fromARGB(255, 208, 207, 207),
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 8,
        shadowColor:
            (type == text) ? const Color.fromARGB(0, 0, 0, 0) : Colors.black,
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }

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
            'Feedback',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color(0xFF0066FF),
          onPressed: () {},
          label: const Text(
            'Submit',
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
                padding: EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  "Please select your feedback type.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomRadioButton("Something missing", 250),
                    SizedBox(
                      height: 25,
                    ),
                    CustomRadioButton("Something not working proberly", 300),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        CustomRadioButton("Suggestion", 150),
                        SizedBox(
                          width: 25,
                        ),
                        CustomRadioButton("Other", 100),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "Please leave your feedback below.",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 340,
                      height: 200,
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextFormField(
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.multiline,
                        maxLines: 50,
                        decoration: InputDecoration(
                          hintText: 'Tell us your feedback.',
                        ),
                      ),
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
