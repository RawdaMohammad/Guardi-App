// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:guardi_app/widgets/PasswordField.dart';
import 'package:guardi_app/widgets/dateField.dart';
import 'package:guardi_app/widgets/phoneNumber.dart';
import 'package:guardi_app/widgets/textField.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  static String id = 'login page';
  @override
  State<SignUp> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUp> {
  bool isLoading = false;

  String groupValue = "Female";

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final dateOfBirth = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

  // Validation function for FCI email
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    RegExp regex = RegExp(r'^([0-9]+)@stud\.fci-cu\.edu\.eg$');
    if (!regex.hasMatch(value)) {
      return 'Please enter a valid FCI email';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Sign up',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF7D7D7D), Color(0x00FFFFFF)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              tileMode: TileMode.clamp),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  controller: firstName,
                  text: 'First Name',
                  inputType: TextInputType.name,
                  hintText: 'First Name',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your First name';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  controller: lastName,
                  text: 'Last Name',
                  inputType: TextInputType.name,
                  hintText: 'Last Name',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Last name';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  controller: phoneNumber,
                  text: 'Phone Number',
                  inputType: TextInputType.phone,
                  hintText: 'Phone Number',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Phone Number';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  controller: email,
                  icon: Icon(Icons.mail),
                  text: 'Email Address',
                  inputType: TextInputType.emailAddress,
                  hintText: 'Email Address',
                  validator: (value) => validateEmail(value),
                  num: 10,
                ),
                const SizedBox(
                  height: 15,
                ),
                DateField(
                  controller: dateOfBirth,
                  text: 'Date of birth',
                  hintText: 'yyyy-mm-dd',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your date of bith';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 10, top: 10),
                  child: Text(
                    "Gender",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                  ),
                ),
                Container(
                  width: 355,
                  height: 60,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  margin:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(15.0),
                    // border: Border.all(color: Colors.black),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Expanded(
                      flex: 3,
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: groupValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            groupValue = newValue!;
                          });
                        },
                        items: <String>[
                          'Female',
                          'Male',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(fontSize: 18),
                            ),
                          );
                        }).toList(),
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 30,
                        underline: const SizedBox(),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                PasswordField(
                  controller: password,
                  text: 'Password',
                  obscureText: true,
                  hintText: 'Password',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    if (value.length < 8) {
                      return 'Password must be at least 8 characters long';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                PasswordField(
                  controller: confirmPassword,
                  text: 'Confirmation password',
                  obscureText: true,
                  hintText: 'Confirmation password',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Confirm password';
                    }
                    if (value != password.text) {
                      return 'Confirmation password should be same as password';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Text(
                      'Agree to Terms and Conditions',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0066FF),
                        minimumSize: Size(300, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SignUp();
                          }));
                        }
                      },
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
