// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:guardi_app/screens/FirstAid.dart';
import 'package:guardi_app/screens/help&support/help&support.dart';
import 'package:guardi_app/screens/logIn.dart';
import 'package:guardi_app/screens/NaturalDisaster/naturalDisaster.dart';
import 'package:guardi_app/screens/medicalInfo.dart';
import 'package:guardi_app/screens/menu.dart';
import 'package:guardi_app/screens/profile.dart';
import 'package:guardi_app/screens/request_volunteer.dart';
import 'package:guardi_app/screens/setting.dart';
import 'package:guardi_app/screens/signUp.dart';
import 'package:guardi_app/screens/feedback.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF7D7D7D), Color(0xFFFFFFFF)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              tileMode: TileMode.clamp),
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0066FF),
                minimumSize: Size(115, 42),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUp();
                }));
              },
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0066FF),
                minimumSize: Size(115, 42),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LogIn();
                }));
              },
              child: Text(
                'Log In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF021E5C),
                fixedSize: Size(180, 42),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FirstAidHomePage();
                }));
              },
              child: Text(
                'First Aid',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF021E5C),
                fixedSize: Size(180, 42),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NaturalDisaster();
                }));
              },
              child: Text(
                'Natural Disaster',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF021E5C),
                fixedSize: Size(180, 42),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Help_Support();
                }));
              },
              child: Text(
                'Help & Supprt',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF021E5C),
                fixedSize: Size(180, 42),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Medical();
                }));
              },
              child: Text(
                'Medical Info',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF021E5C),
                fixedSize: Size(180, 42),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Menu();
                }));
              },
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF021E5C),
                fixedSize: Size(180, 42),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Setting();
                }));
              },
              child: Text(
                'Setting',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF021E5C),
                fixedSize: Size(180, 42),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FeedBackState();
                }));
              },
              child: Text(
                'Feedback',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF021E5C),
                fixedSize: Size(200, 42),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RequestVolunteer();
                }));
              },
              child: Text(
                'Request Volunteer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF021E5C),
                fixedSize: Size(180, 42),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProfileState();
                }));
              },
              child: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
