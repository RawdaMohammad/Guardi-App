// ignore_for_file: use_build_context_synchronously

import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:guardi_app/widgets/dateField.dart';
import 'package:guardi_app/widgets/textField.dart';
import 'package:image_picker/image_picker.dart';

class ProfileState extends StatefulWidget {
  const ProfileState({Key? key}) : super(key: key);

  static String id = 'login page';
  @override
  State<ProfileState> createState() => Profile();
}

class Profile extends State<ProfileState> {
  Uint8List? _image;
  File? selectedIMage;
  String groupValue = "Female";
  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final phoneNumber = TextEditingController();
  final dateOfBirth = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
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
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SizedBox(
        width: screenWidth,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Form(
            key: formKey,
            child: ListView(
              padding: const EdgeInsets.only(top: 20),
              children: [
                Center(
                  child: Stack(
                    children: [
                      _image != null
                          ? CircleAvatar(
                              radius: 70, backgroundImage: MemoryImage(_image!))
                          : const CircleAvatar(
                              radius: 70,
                              backgroundImage: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),
                            ),
                      Positioned(
                        bottom: -0,
                        left: 90,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: IconButton(
                            onPressed: () {
                              showImagePickerOption(context);
                            },
                            icon: const Icon(
                              Icons.camera_alt,
                              size: 32,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
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
                const SizedBox(
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
                const SizedBox(
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
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0066FF),
                      minimumSize: const Size(100, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ProfileState();
                      }));
                    },
                    child: const Text(
                      'Energency Contacts',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0066FF),
                      minimumSize: const Size(100, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ProfileState();
                      }));
                    },
                    child: const Text(
                      'Update',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: const Color(0xFFFFFFFF),
        context: context,
        builder: (builder) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4.5,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromGallery();
                      },
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.image,
                              size: 70,
                            ),
                            Text("Gallery")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromCamera();
                      },
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.camera_alt,
                              size: 70,
                            ),
                            Text("Camera")
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

//Gallery
  Future _pickImageFromGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop(); //close the model sheet
  }

//Camera
  Future _pickImageFromCamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }
}
