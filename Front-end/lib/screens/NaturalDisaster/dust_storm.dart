// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// import 'package:guardi_app/screens/NaturalDisaster/instructionText.dart';

// class Dust_Storm extends StatelessWidget {
//   const Dust_Storm({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           leading: GestureDetector(
//             child: Icon(
//               Icons.arrow_back_ios,
//               color: Colors.black,
//             ),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//           elevation: 0,
//           backgroundColor: Color.fromARGB(0, 255, 255, 255),
//           title: Text(
//             'Dust Storm',
//             style: TextStyle(
//                 fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
//           ),
//         ),
//         body: Container(
//           alignment: Alignment.center,
//           child: SingleChildScrollView(
//             padding: EdgeInsets.all(19.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 InstructionText(
//                   title: 'If you are indoors when shaking starts:',
//                   instructions: [
//                     '"DROP, COVER AND HOLD ON." If you are not near a strong table or desk, drop to the floor against an interior wall and cover your head and neck with your arms.',
//                     'Avoid windows, hanging objects, mirrors, tall furniture, large appliances and cabinets filled with heavy objects.',
//                     'Do not try to run out of the structure during strong shaking.',
//                     'Stay away from buildings. Glass from tall buildings does not always fall straight down; it can catch a wind current and travel great distances.',
//                     'If you are in bed, stay there and cover your head with a pillow.',
//                     'Do not use elevators.',
//                     'If you use a wheelchair, lock the wheels and cover your head.',
//                   ],
//                 ),
//                 SizedBox(height: 19.0),
//                 InstructionText(
//                   title: 'If you are outdoors when shaking starts:',
//                   instructions: [
//                     'Move to a clear area if you can safely walk. Avoid power lines, buildings and trees.',
//                     'If you’re driving, pull to the side of the road and stop. Avoid stopping under overhead hazards.',
//                     'If you are on the beach, move to higher ground. An earthquake can cause a tsunami.',
//                   ],
//                 ),
//                 SizedBox(height: 19.0),
//                 InstructionText(
//                   title: 'Once the earthquake shaking stops:',
//                   instructions: [
//                     'Check the people around you for injuries; provide first aid. Do not move seriously injured persons unless they are in immediate danger.',
//                     'Check around you for dangerous conditions, such as fires, downed power lines and structure damage.',
//                     'If you have fire extinguishers and are trained to use them, put out small fires immediately.',
//                     'Turn off the gas only if you smell gas.',
//                     'Check your phones to be sure they have not shaken off the hook and are tying up a line.',
//                     'Inspect your home for damage.',
//                     'If you are trapped in debris:',
//                     'Move as little as possible so that you don’t kick up dust. Cover your nose and mouth with a handkerchief or clothing.',
//                     'Tap on a pipe or wall so that rescuers can hear where you are. Use a whistle if one is available. Shout only as a last resort.',
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
