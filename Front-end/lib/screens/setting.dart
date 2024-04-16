// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:guardi_app/screens/menu.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  Menu();
                }));
              },
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: const Text(
              'Settings',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30),
            ),
          ),
          body: Container(
              width: screenWidth,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF7D7D7D), Color(0x00FFFFFF)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    tileMode: TileMode.clamp),
              ),
              // ignore: prefer_const_constructors
              child: Column(
                children: <Widget>[
                  //Account-----------------
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.switch_account_outlined,
                              color: Colors.black,
                            ),
                            SizedBox(width: 7),
                            Text(
                              'Account',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(width: 225),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromARGB(255, 211, 208, 208),
                              size: 18,
                            ),
                          ],
                        ),
                        SizedBox(height: 7),
                        Divider(
                          color: Color.fromARGB(255, 211, 208, 208),
                          thickness: 1,
                          indent: 10,
                          endIndent: 30,
                        ),
                      ],
                    ),
                  ),
                  //Demo--------------
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.app_shortcut,
                              color: Colors.black,
                            ),
                            SizedBox(width: 7),
                            Text(
                              'Try Demo Mode',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(width: 150),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromARGB(255, 211, 208, 208),
                              size: 18,
                            ),
                          ],
                        ),
                        SizedBox(height: 7),
                        Divider(
                          color: Color.fromARGB(255, 211, 208, 208),
                          thickness: 1,
                          indent: 10,
                          endIndent: 30,
                        ),
                      ],
                    ),
                  ),
                  //Language-----------------
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.language,
                              color: Colors.black,
                            ),
                            SizedBox(width: 7),
                            Text(
                              'Change App Language',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(width: 85),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromARGB(255, 211, 208, 208),
                              size: 18,
                            ),
                          ],
                        ),
                        SizedBox(height: 7),
                        Divider(
                          color: Color.fromARGB(255, 211, 208, 208),
                          thickness: 1,
                          indent: 10,
                          endIndent: 30,
                        ),
                      ],
                    ),
                  ),
                  //Privacy---------------
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.vpn_key_outlined,
                              color: Color(0xFF000000),
                            ),
                            SizedBox(width: 7),
                            Text(
                              'Privacy',
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(width: 234),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromARGB(255, 211, 208, 208),
                              size: 18,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ));
  }
}
