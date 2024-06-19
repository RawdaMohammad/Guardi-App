// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:guardi_app/screens/medicalInfo.dart';

import 'package:guardi_app/DB/Users.dart';
import 'package:guardi_app/DB/api_response.dart';
import 'package:guardi_app/screens/homePage.dart';
import 'package:guardi_app/screens/home_page.dart';
import 'package:guardi_app/services/routes.dart';
import 'package:guardi_app/services/user_services.dart';
import 'package:guardi_app/widgets/PasswordField.dart';
import 'package:guardi_app/widgets/dateField.dart';
import 'package:guardi_app/widgets/phoneNumber.dart';
import 'package:guardi_app/widgets/textField.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import 'OTP.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  static String id = 'login page';
  @override
  State<SignUp> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUp> {
  bool isLoading = false;

  String groupValue = "female";

  late final firstName = TextEditingController();
  late final lastName = TextEditingController();
  late final email = TextEditingController();
  late final phoneNumber = TextEditingController();
  late final dateOfBirth = TextEditingController();
  late final password = TextEditingController();
  late final confirmPassword = TextEditingController();

  bool loading = false;
  GlobalKey<FormState> formKey = GlobalKey();

  // void registerUser() async {
  //   ApiResponse response = await signUp(
  //     "firstName.text",
  //     "lastName.text",
  //     "groupValue",
  //     "email.text",
  //     "2024-04-22T12:30:00.000000Z",
  //     "phoneNumber.text",
  //     "password.text",
  //   );
  //   // print(DateTime.now());
  //   saveData(response.data as Users);
  //   if (response.error == null) {
  //   } else {
  //     setState(() {
  //       loading = !loading;
  //     });
  //   }
  // }

  // void saveData(Users user) async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   await pref.setString('email', user.email ?? '');
  // }

  createAccountPressed() async {
    // bool emailValid = RegExp(
    //         r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
    //     .hasMatch(_email);
    // if (emailValid) {
    http.Response response = await UserServices.SignUp(
        firstName.text,
        lastName.text,
        groupValue,
        email.text,
        dateOfBirth.text,
        phoneNumber.text,
        password.text
    );
    Map responseMap = jsonDecode(response.body);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    // print(responseMap);
    if (response.statusCode == 201) {
      print('llllllllllllllllllllllll');
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => otp(email: email.text),
          ));
    } else {
      print('wwwwwwwwwwwwwwwwwwwww');
      errorSnackBar(context, responseMap.values.first[0]);
    }
    // } else {
    //   errorSnackBar(context, 'email not valid');
    // }
  }

  // Validation function for FCI email
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    RegExp regex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
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
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile(
                        title: const Text(
                          'Female',
                          style: TextStyle(fontSize: 20),
                        ),
                        value: "female",
                        groupValue: groupValue,
                        onChanged: (value) {
                          setState(() {
                            groupValue = value!;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: const Text(
                          'Male',
                          style: TextStyle(fontSize: 20),
                        ),
                        value: "male",
                        groupValue: groupValue,
                        onChanged: (value) {
                          setState(() {
                            groupValue = value!;
                          });
                        },
                      ),
                    ),
                  ],
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
                          createAccountPressed();
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return otp(email: email.text);
                          }));
                          // http.Response respo = await http.post(
                          //     Uri.parse("http://10.0.2.2:8000/api/students"),
                          //     body: {
                          //       "id": "13",
                          //       "name": "w",
                          //       "gender": "female",
                          //       "email": "13@stud.fci-cu.edu.eg",
                          //       "level": "level 1",
                          //       "password": "11111111",
                          //       "imageName": "hhhhhh",
                          //     });
                          // print("--------------------------------\n");
                          // print(respo.body);
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
