// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FirstAidHomePage extends StatelessWidget {
  const FirstAidHomePage({super.key});

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
                'First Aid',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30),
              ),
            ),
            body: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF7D7D7D), Color(0x00FFFFFF)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    tileMode: TileMode.clamp),
              ),
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) {
                      //   return DRSABCD();
                      // }));
                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0))),
                    child: Container(
                      width: 350,
                      height: 160,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/img.jpeg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x00000000).withOpacity(0.7),
                            spreadRadius: 0,
                            blurRadius: 6,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0))),
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            width: 350,
                            height: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/img1.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x00000000).withOpacity(0.7),
                                  spreadRadius: 0,
                                  blurRadius: 6,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 43,
                            decoration: BoxDecoration(
                              color: Colors.pink.withOpacity(0.5),
                            ),
                          ),
                          Text(
                            "Unresponsiveness",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                color: Colors.white),
                          ),
                        ],
                      )),
                  SizedBox(height: 15),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0))),
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            width: 350,
                            height: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/img2.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x00000000).withOpacity(0.7),
                                  spreadRadius: 0,
                                  blurRadius: 6,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 43,
                            decoration: BoxDecoration(
                              color: Colors.pink.withOpacity(0.5),
                            ),
                          ),
                          Text(
                            "Breathing Problems",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                color: Colors.white),
                          ),
                        ],
                      )),
                  SizedBox(height: 15),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0))),
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            width: 350,
                            height: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/img3.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x00000000).withOpacity(0.7),
                                  spreadRadius: 0,
                                  blurRadius: 6,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 43,
                            decoration: BoxDecoration(
                              color: Colors.pink.withOpacity(0.5),
                            ),
                          ),
                          Text(
                            "Trauma",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                color: Colors.white),
                          ),
                        ],
                      )),
                  SizedBox(height: 15),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0))),
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            width: 350,
                            height: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/img4.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x00000000).withOpacity(0.7),
                                  spreadRadius: 0,
                                  blurRadius: 6,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 43,
                            decoration: BoxDecoration(
                              color: Colors.pink.withOpacity(0.5),
                            ),
                          ),
                          Text(
                            "Medical Conditions",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                color: Colors.white),
                          ),
                        ],
                      )),
                  SizedBox(height: 15),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0))),
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            width: 350,
                            height: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/img5.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x00000000).withOpacity(0.7),
                                  spreadRadius: 0,
                                  blurRadius: 6,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 43,
                            decoration: BoxDecoration(
                              color: Colors.pink.withOpacity(0.5),
                            ),
                          ),
                          Text(
                            "Enviromental",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                color: Colors.white),
                          ),
                        ],
                      )),
                  SizedBox(height: 15),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0))),
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            width: 350,
                            height: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/img6.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x00000000).withOpacity(0.7),
                                  spreadRadius: 0,
                                  blurRadius: 6,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 43,
                            decoration: BoxDecoration(
                              color: Colors.pink.withOpacity(0.5),
                            ),
                          ),
                          Text(
                            "Mental Distress",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                color: Colors.white),
                          ),
                        ],
                      )),
                  SizedBox(height: 15),
                ],
              )),
            )));
  }
}
