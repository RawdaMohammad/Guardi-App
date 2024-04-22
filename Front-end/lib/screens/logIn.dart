// ignore_for_file: prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:guardi_app/screens/home_page.dart';
import 'package:guardi_app/screens/signUp.dart';
import 'package:guardi_app/services/routes.dart';
import 'package:guardi_app/services/user_services.dart';
import 'package:guardi_app/widgets/PasswordField.dart';
import 'package:guardi_app/widgets/textField.dart';
import 'package:http/http.dart' as http;

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  static String id = 'login page';
  @override
  State<LogIn> createState() => _LoginPageState();
}

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          value: checked,
          activeColor: const Color(0xFF0066FF),
          onChanged: (bool? value) {
            setState(() {
              checked = value ?? false;
            });
          },
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              checked = !checked;
            });
          },
          child: const Text(
            'Remember Me',
            style: TextStyle(fontSize: 14.0),
          ),
        ),
        Container(
          alignment: Alignment.topRight,
          padding: const EdgeInsets.only(left: 100),
          child: GestureDetector(
            onTap: () {},
            child: const Text("Forgot Password?",
                style: TextStyle(fontSize: 14, color: Color(0xFF0066FF))),
          ),
        )
      ],
    );
  }
}

class _LoginPageState extends State<LogIn> {
  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();

  final email = TextEditingController();
  final password = TextEditingController();
  loginPressed() async {
    http.Response response =
        await UserServices.login(email.text, password.text);
    Map responseMap = jsonDecode(response.body);
    if (response.statusCode == 200) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const HomePage(),
          ));
    } else {
      errorSnackBar(context, responseMap.values.first);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Login',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                controller: email,
                icon: const Icon(Icons.mail),
                text: 'Email Address',
                inputType: TextInputType.emailAddress,
                hintText: 'Enter Your Email',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              PasswordField(
                  controller: password,
                  text: 'Password',
                  hintText: 'Password',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    return null;
                  },
                  obscureText: true),
              const SizedBox(
                height: 15,
              ),
              const CheckBox(),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0066FF),
                      minimumSize: const Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        loginPressed();
                      }
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text("Don’t have an account?"),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignUp();
                    }));
                  },
                  child: const Text(
                    " Sign Up",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF0066FF),
                    ),
                  ),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
