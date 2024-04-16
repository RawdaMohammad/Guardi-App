// // ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables, unnecessary_new

// import 'package:flutter/material.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';

// class phoneNumberField extends StatelessWidget {
//   phoneNumberField({
//     this.text,
//     this.hintText,
//     this.onChanged,
//     this.obscureText = false,
//     this.icon,
//     this.num = 0,
//   });
//   Function(String)? onChanged;
//   String? hintText, text;
//   final Icon? icon;
//   double? num;
//   bool? obscureText;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           // constraints: BoxConstraints.tightFor(width: 200.0, height: 100.0),
//           alignment: Alignment.centerLeft,
//           padding: EdgeInsets.only(left: 15, bottom: 10),
//           child: Text(
//             text!,
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 22,
//             ),
//           ),
//         ),
//         Container(
//           width: 355,
//           height: 55,
//           decoration: BoxDecoration(
//               color: Color(0xFFF6F5F5),
//               borderRadius: new BorderRadius.circular(15.0),
//               boxShadow: [
//                 BoxShadow(
//                   color: Color(0xFF000000),
//                   blurRadius: 4.0,
//                   spreadRadius: 0,
//                   offset: Offset(0, 4),
//                 )
//               ]),
//           child: IntlPhoneField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(
//                 borderRadius:
//                     BorderRadius.circular(10.0), // Customize border radius
//                 borderSide:
//                     BorderSide(color: Colors.blue), // Customize border color
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//                 borderSide: BorderSide(
//                     color: Colors.green), // Customize focused border color
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//                 borderSide: BorderSide(
//                     color: Colors.red), // Customize enabled border color
//               ),
//             ),
//             initialCountryCode: 'EG',
//           ),
//         ),
//       ],
//     );
//   }
// }
