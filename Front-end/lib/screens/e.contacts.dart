// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:guardi_app/screens/homePage.dart';
import 'package:guardi_app/screens/home_page.dart';
// import 'package:guardi_app/widgets/addContact.dart';
import 'package:guardi_app/widgets/textField.dart';

class EContact extends StatefulWidget {
  const EContact({Key? key}) : super(key: key);

  // static String id = 'login page';
  @override
  State<EContact> createState() => EContactState();
}

class EContactState extends State<EContact> {
  bool isLoading = false;
  List<Map<String, String>> emergencyContacts = [];
  final contact_name = TextEditingController();
  final contact_phone = TextEditingController();
  final contact_relation = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

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
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Home_page();
            }));
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Emergency contacts',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
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
                Container(
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 10, bottom: 5),
                        child: Text(
                          'Enter emergency contact info :',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          '(Enter them according to priority so that the person who should be contacted first appears at the top.)',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    for (int i = 0; i < emergencyContacts.length; i++)
                      Column(
                        children: [
                          CustomTextField(
                            controller: TextEditingController(
                                text: emergencyContacts[i]['name']),
                            text: 'Full Name',
                            inputType: TextInputType.name,
                            hintText: 'Contact Name',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Full Name';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomTextField(
                            controller: TextEditingController(
                                text: emergencyContacts[i]['phone']),
                            text: 'Phone Number',
                            inputType: TextInputType.phone,
                            hintText: 'Contat Phone Number',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Phone Number';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomTextField(
                            controller: TextEditingController(
                                text: emergencyContacts[i]['relation']),
                            text: 'Relationship (Optional)',
                            inputType: TextInputType.phone,
                            hintText: 'Relationship',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your Phone Number';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                setState(() {
                                  emergencyContacts.removeAt(i);
                                });
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                        ],
                      ),
                    if (emergencyContacts.length < 3)
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0, top: 15),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              // Add an empty contact entry to the list
                              emergencyContacts.add({
                                'name': '',
                                'phone': '',
                                'relation': '',
                              });
                            });
                          },
                          child: Container(
                            width: 70,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: EdgeInsets.all(8.0),
                            child: const Icon(
                              Icons.person_add,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0066FF),
                    fixedSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // Handle the form submission
                    }
                  },
                  child: const Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const HomePage();
                        }));
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Skip",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),
                            
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
