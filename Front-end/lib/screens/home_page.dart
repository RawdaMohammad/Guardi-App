// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:guardi_app/widgets/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
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
        child: SizedBox(
          width: screenWidth,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: screenWidth * 0.5,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: const Color.fromARGB(255, 241, 81, 81),
                  ),
                ],
              ),
              // Container(
              //   padding: EdgeInsets.only(top: 20, left: 20),
              //   margin: EdgeInsets.only(top: 70),
              //   width: screenWidth * 0.72,
              //   height: screenHeight * 0.17,
              //   decoration: BoxDecoration(
              //     color: Color(0xffEA5B1D).withOpacity(0.3),
              //     borderRadius: BorderRadius.circular(20.0),
              //     border: Border.all(
              //         color: const Color(0xff6E6E6E).withOpacity(0.5)),
              //   ),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Row(
              //         children: [
              //           Text(
              //             "Fire",
              //             style: TextStyle(
              //                 fontSize: 25, fontWeight: FontWeight.w500),
              //           ),
              //           SizedBox(
              //             width: screenWidth * 0.38,
              //           ),
              //           CircleButtonDemo(
              //             progressColor: Color(0xffEA5B1D),
              //           ),
              //         ],
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.only(top: 25),
              //         child: Text(
              //           "Press 3 times OR say Fire",
              //           style:
              //               TextStyle(fontSize: 18, color: Color(0xff7D7A7A)),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   padding: EdgeInsets.only(top: 20, left: 20),
              //   margin: EdgeInsets.only(top: 50),
              //   width: screenWidth * 0.72,
              //   height: screenHeight * 0.17,
              //   decoration: BoxDecoration(
              //     color: Color(0xffF40C0C).withOpacity(0.3),
              //     borderRadius: BorderRadius.circular(20.0),
              //     border: Border.all(
              //         color: const Color(0xff6E6E6E).withOpacity(0.5)),
              //   ),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Row(
              //         children: [
              //           Text(
              //             "Ambulance",
              //             style: TextStyle(
              //                 fontSize: 25, fontWeight: FontWeight.w500),
              //           ),
              //           SizedBox(
              //             width: screenWidth * 0.17,
              //           ),
              //           CircleButtonDemo(
              //             progressColor: Color(0xffF40C0C),
              //           ),
              //         ],
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.only(top: 25),
              //         child: Text(
              //           "Press 3 times OR say Hospital",
              //           style:
              //               TextStyle(fontSize: 18, color: Color(0xFF686565)),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   padding: EdgeInsets.only(top: 20, left: 20),
              //   margin: EdgeInsets.only(top: 50),
              //   width: screenWidth * 0.72,
              //   height: screenHeight * 0.17,
              //   decoration: BoxDecoration(
              //     color: Color(0xff2F60DD).withOpacity(0.3),
              //     borderRadius: BorderRadius.circular(20.0),
              //     border: Border.all(
              //         color: const Color(0xff6E6E6E).withOpacity(0.5)),
              //   ),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Row(
              //         children: [
              //           Text(
              //             "Police",
              //             style: TextStyle(
              //                 fontSize: 25, fontWeight: FontWeight.w500),
              //           ),
              //           SizedBox(
              //             width: screenWidth * 0.31,
              //           ),
              //           CircleButtonDemo(
              //             progressColor: Color(0xff2F60DD),
              //           ),
              //         ],
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.only(top: 25),
              //         child: Text(
              //           "Press 3 times OR say Police",
              //           style:
              //               TextStyle(fontSize: 18, color: Color(0xFF4D4B4B)),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
