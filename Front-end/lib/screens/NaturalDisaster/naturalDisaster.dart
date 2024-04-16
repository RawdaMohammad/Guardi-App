// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:guardi_app/screens/NaturalDisaster/dust_storm.dart';
import 'package:guardi_app/screens/NaturalDisaster/earthquake.dart';
import 'package:guardi_app/screens/NaturalDisaster/flood.dart';
import 'package:guardi_app/screens/NaturalDisaster/storm.dart';
import 'package:guardi_app/screens/NaturalDisaster/tornado.dart';
import 'package:guardi_app/screens/NaturalDisaster/tsunami.dart';
import 'package:guardi_app/screens/NaturalDisaster/volcano.dart';

class NaturalDisaster extends StatelessWidget {
  const NaturalDisaster({super.key});

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
                'Natural Disaster',
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Volcano();
                        }));
                      },
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
                                image: AssetImage('assets/images/volcano.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x00000000).withOpacity(0.7),
                                  spreadRadius: 0,
                                  blurRadius: 6,
                                  offset: Offset(0, 4),
                                  // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 43,
                            decoration: BoxDecoration(
                              color: Color(0xFF11606A).withOpacity(0.4),
                            ),
                          ),
                          Text(
                            "Volcano",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                color: Colors.white),
                          ),
                        ],
                      )),
                  SizedBox(height: 15),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Earthquake();
                        }));
                      },
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
                                image:
                                    AssetImage('assets/images/earthquake.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x00000000).withOpacity(0.7),
                                  spreadRadius: 0,
                                  blurRadius: 6,
                                  offset: Offset(0, 4),
                                  // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 43,
                            decoration: BoxDecoration(
                              color: Color(0xFF11606A).withOpacity(0.4),
                            ),
                          ),
                          Text(
                            "Earthquake",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                color: Colors.white),
                          ),
                        ],
                      )),
                  SizedBox(height: 15),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Tsunami();
                        }));
                      },
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
                                image: AssetImage('assets/images/tsunami.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x00000000).withOpacity(0.7),
                                  spreadRadius: 0,
                                  blurRadius: 6,
                                  offset: Offset(0, 4),
                                  // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 43,
                            decoration: BoxDecoration(
                              color: Color(0xFF11606A).withOpacity(0.4),
                            ),
                          ),
                          Text(
                            "Tsunami",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                color: Colors.white),
                          ),
                        ],
                      )),
                  SizedBox(height: 15),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Tornado();
                        }));
                      },
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
                                image: AssetImage('assets/images/tornado.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x00000000).withOpacity(0.7),
                                  spreadRadius: 0,
                                  blurRadius: 6,
                                  offset: Offset(0, 4),
                                  // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 43,
                            decoration: BoxDecoration(
                              color: Color(0xFF11606A).withOpacity(0.4),
                            ),
                          ),
                          Text(
                            "Tornado",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                color: Colors.white),
                          ),
                        ],
                      )),
                  SizedBox(height: 15),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Storm();
                        }));
                      },
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
                                image: AssetImage('assets/images/storm.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x00000000).withOpacity(0.7),
                                  spreadRadius: 0,
                                  blurRadius: 6,
                                  offset: Offset(0, 4),
                                  // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 43,
                            decoration: BoxDecoration(
                              color: Color(0xFF11606A).withOpacity(0.4),
                            ),
                          ),
                          Text(
                            "Storm",
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
                                image:
                                    AssetImage('assets/images/hurricane.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x00000000).withOpacity(0.7),
                                  spreadRadius: 0,
                                  blurRadius: 6,
                                  offset: Offset(0, 4),
                                  // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 43,
                            decoration: BoxDecoration(
                              color: Color(0xFF11606A).withOpacity(0.4),
                            ),
                          ),
                          Text(
                            "Hurricane",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                color: Colors.white),
                          ),
                        ],
                      )),
                  SizedBox(height: 15),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Flood();
                        }));
                      },
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
                                image: AssetImage('assets/images/flood.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x00000000).withOpacity(0.7),
                                  spreadRadius: 0,
                                  blurRadius: 6,
                                  offset: Offset(0, 4),
                                  // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 43,
                            decoration: BoxDecoration(
                              color: Color(0xFF11606A).withOpacity(0.4),
                            ),
                          ),
                          Text(
                            "Flood",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                color: Colors.white),
                          ),
                        ],
                      )),
                  SizedBox(height: 15),
                  ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   return Dust_Storm();
                        // }));
                      },
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
                                image:
                                    AssetImage('assets/images/dustStorm.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x00000000).withOpacity(0.7),
                                  spreadRadius: 0,
                                  blurRadius: 6,
                                  offset: Offset(0, 4),
                                  // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 43,
                            decoration: BoxDecoration(
                              color: Color(0xFF11606A).withOpacity(0.4),
                            ),
                          ),
                          Text(
                            "Dust Storm",
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
