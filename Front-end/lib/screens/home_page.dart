// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:guardi_app/screens/FirstAid.dart';
import 'package:guardi_app/screens/NaturalDisaster/naturalDisaster.dart';
import 'package:guardi_app/screens/menu.dart';
import 'package:guardi_app/screens/request_volunteer.dart';
import 'package:guardi_app/widgets/custom_button.dart';
import 'package:guardi_app/widgets/service_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  bool isVolunteer = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
                width: 4.0,
                color: Color(0xFF9C9C9C)), // Adjust width and color as needed
          ),
        ),
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: const Color(0xFF858585),
          ),
          // ignore: sort_child_properties_last
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (val) {
              setState(() {
                selectedIndex = val;
                if (val == 0) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const HomePage();
                  }));
                } else if (val == 3) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Menu();
                  }));
                }
              });
            },
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            selectedFontSize: 20,
            showUnselectedLabels: true,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: "Notification",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: "Menu",
              ),
            ],
          ),
        ),
      ),
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
        child: SizedBox(
          width: screenWidth,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/homeLogo.svg",
                    width: 70,
                    height: 70,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: screenWidth * 0.3,
                  ),
                  Row(
                    children: [
                      Text(
                        "Volunteer",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FlutterSwitch(
                        width: 65,
                        height: 30,
                        showOnOff: true,
                        activeTextColor: Colors.white,
                        inactiveColor: Color(0xff6E6E6E),
                        activeColor: Colors.black,
                        value: isVolunteer,
                        onToggle: (val) {
                          setState(() {
                            isVolunteer = val;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
              CustomCircleButton(
                serviceText: "Fire",
                progressColor: Color(0xffEA5B1D),
                spaceWidth: screenWidth * 0.38,
                serviceNum: "one",
                icon: 'assets/icons/carbon--fire.svg',
                iconPadding: 5,
              ),
              CustomCircleButton(
                serviceText: "Ambulance",
                progressColor: Color(0xffF40C0C),
                spaceWidth: screenWidth * 0.17,
                serviceNum: "two",
                icon: 'assets/icons/ambulance.svg',
              ),
              CustomCircleButton(
                serviceText: "Police",
                progressColor: Color(0xff2F60DD),
                spaceWidth: screenWidth * 0.31,
                serviceNum: "three",
                icon: 'assets/icons/police.svg',
                iconSize: 35,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, bottom: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "More Services",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 45,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    ServiceButton(
                      icon: "assets/icons/time-estimated.svg",
                      text: "Time Estimated",
                      navigate: HomePage(),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ServiceButton(
                      icon: "assets/icons/volunteer.svg",
                      text: "Request Volunteer",
                      navigate: RequestVolunteer(),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ServiceButton(
                      icon: "assets/icons/earthquake.svg",
                      text: "Natural Disasters",
                      navigate: NaturalDisaster(),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ServiceButton(
                      icon: "assets/icons/first-aid.svg",
                      text: "First Aid",
                      navigate: FirstAidHomePage(),
                    ),
                    SizedBox(
                      width: 30,
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
