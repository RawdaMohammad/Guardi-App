// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:guardi_app/screens/help&support/text.dart';

class Terms_Conditions extends StatelessWidget {
  const Terms_Conditions({super.key});

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
            'Terms & Conditions',
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
              tileMode: TileMode.clamp,
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(19.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InfoText(
                    title: 'Guardi Terms & Conditions',
                    instructions: ['Last updated: March 8th, 2024'],
                  ),
                  SizedBox(height: 19.0),
                  InfoText(
                    title: '1. Scope',
                    instructions: [
                      'These Terms and Conditions apply to all users ',
                      "(hereinafter referred to as User) of 'Gurdi' mobile ",
                      'app (hereinafter referred to as App).',
                    ],
                  ),
                  SizedBox(height: 19.0),
                  InfoText(
                    title: '2. Accounts and Registration',
                    instructions: [
                      'To access and use the Service you must create',
                      'an account (“Account”) by providing us with',
                      'information, which may include your name, ',
                      'phone number, email address, gender, date of',
                      'birth, medical information and emergency',
                      'contacts (the user may skip this step and fill it',
                      'later)',
                    ],
                  ),
                  SizedBox(height: 19.0),
                  InfoText(
                    title: '3. Service Availability',
                    instructions: [
                      'The Service is dependent on internet connection',
                      'and will not work if there is no internet.',
                    ],
                  ),
                  SizedBox(height: 19.0),
                  InfoText(
                    title: '4. Service Features',
                    instructions: [
                      '4.1 Emergency services',
                      "   4.1.1 When requesting a service the user's",
                      '   information is sent to the service and the',
                      '   service can view the request through webpage.',
                      '   4.1.2 The request is stored in the system and',
                      '   deleted after acceptance.',
                      '   ',
                      '4.2 More services',
                      "   4.2.1 Request a volunteer",
                      '   The user request volunteer in any critical',
                      '   situations other than emergency ones.',
                      '',
                      '   4.2.2 Start a trip',
                      '   Before using this service the user should add',
                      '   at least one emergency contact.',
                      '   By using this service the user share his trip',
                      '   info with one of his relatives.',
                      '',
                      '   4.2.3 First aid and natural disasters instructions',
                      "   It's a static instructions the user can view",
                      '   offline.',
                    ],
                  ),
                  SizedBox(height: 19.0),
                  InfoText(
                    title: '5. Privacy Policy',
                    instructions: [
                      'Our Privacy Policy explains how we collect, use, ',
                      'and share your information. You agree that your',
                      'access to and use of the Service is governed by ',
                      'our Privacy Policy.',
                    ],
                  ),
                  SizedBox(height: 19.0),
                  InfoText(
                    title: '6. Termination of Use',
                    instructions: [
                      'The use of the app can be terminated by the user',
                      'at any time by deleting or uninstalling it from the',
                      'mobile phone.',
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
