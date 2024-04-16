// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Medical extends StatefulWidget {
  const Medical({Key? key}) : super(key: key);

  @override
  MedicalInfo createState() => MedicalInfo();
}

class MedicalInfo extends State<Medical> {
  String groupValue1 = "No", groupValue2 = "No", groupValue3 = "No";
  bool? HBP = false, diabetes = false, hemophilia = false, other = false;
  TextEditingController otherController = TextEditingController(),
      otherController2 = TextEditingController(),
      otherController3 = TextEditingController();
  TextEditingController medicationController = TextEditingController(),
      medicationController2 = TextEditingController(),
      medicationController3 = TextEditingController();
  TextEditingController allergiesController = TextEditingController(),
      allergiesController2 = TextEditingController(),
      allergiesController3 = TextEditingController();
  bool otherTextField2 = false, ohterTextField3 = false;
  bool medicationTextField2 = false, medicationTextField3 = false;
  bool allergiesTextField2 = false, allergiesTextField3 = false;
  double containerHeight = 300, secondCH = 180, thirdCH = 160;
  String bloodType = '';
  Widget CustomRadioButton(String type) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          bloodType = type;
        });
      },
      style: OutlinedButton.styleFrom(
        fixedSize: const Size(50, 50),
        side: BorderSide(
          color: (bloodType == type)
              ? Colors.transparent
              : const Color.fromARGB(255, 187, 181, 181),
        ),
        backgroundColor: (bloodType == type)
            ? Colors.red
            : const Color.fromARGB(255, 255, 255, 255),
        textStyle: const TextStyle(
          fontSize: 17,
        ),
        shape: const CircleBorder(),
        elevation: 8,
        shadowColor: (bloodType == type) ? Colors.transparent : Colors.black,
      ),
      child: Text(
        type,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
            'Medical Information',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
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
          child: ListView(
            children: [
              Container(
                height: 210,
                width: 338,
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFE0E0E0),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: const Color(0xffD0D0D0)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF000000).withOpacity(0.2),
                      blurRadius: 5.0,
                      spreadRadius: 0,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "What is your blood type?",
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CustomRadioButton("A+"),
                              CustomRadioButton("A-"),
                              CustomRadioButton("B+"),
                              CustomRadioButton("B-"),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              CustomRadioButton("O+"),
                              CustomRadioButton("O-"),
                              CustomRadioButton("AB+"),
                              CustomRadioButton("AB-"),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 180,
                width: 338,
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFE0E0E0),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: const Color(0xffD0D0D0)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF000000).withOpacity(0.2),
                      blurRadius: 5.0,
                      spreadRadius: 0,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Do you have any chronic diseases?",
                      style: TextStyle(fontSize: 20),
                    ),
                    RadioListTile(
                      title: const Text(
                        'Yes',
                        style: TextStyle(fontSize: 20),
                      ),
                      value: "Yes",
                      groupValue: groupValue1,
                      onChanged: (value) {
                        setState(() {
                          groupValue1 = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text(
                        'No',
                        style: TextStyle(fontSize: 20),
                      ),
                      value: "No",
                      groupValue: groupValue1,
                      onChanged: (value) {
                        setState(() {
                          groupValue1 = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: groupValue1 == "Yes",
                child: Column(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      height: containerHeight,
                      width: 350,
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE0E0E0),
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: const Color(0xffD0D0D0)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF000000).withOpacity(0.2),
                            blurRadius: 5.0,
                            spreadRadius: 0,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const Text(
                              "What conditions/diseases do you have?",
                              style: TextStyle(fontSize: 20),
                            ),
                            CheckboxListTile(
                              title: const Text(
                                "High blood pressure",
                                style: TextStyle(fontSize: 20),
                              ),
                              value: HBP,
                              onChanged: (value) {
                                setState(() {
                                  HBP = value!;
                                });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                            ),
                            CheckboxListTile(
                              title: const Text(
                                "Diabetes",
                                style: TextStyle(fontSize: 20),
                              ),
                              value: diabetes,
                              onChanged: (value) {
                                setState(() {
                                  diabetes = value!;
                                });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                            ),
                            CheckboxListTile(
                              title: const Text(
                                "Hemophilia",
                                style: TextStyle(fontSize: 20),
                              ),
                              value: hemophilia,
                              onChanged: (value) {
                                setState(() {
                                  hemophilia = value!;
                                });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                            ),
                            CheckboxListTile(
                              title: const Text(
                                "Other (Please specify)",
                                style: TextStyle(fontSize: 20),
                              ),
                              value: other,
                              onChanged: (value) {
                                setState(() {
                                  other = value!;
                                  containerHeight = value ? 370 : 300;
                                });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                            ),
                            if (other!)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextField(
                                            controller: otherController,
                                            decoration: const InputDecoration(
                                              labelText: 'Other disease',
                                              hintText: 'Enter other disease',
                                            ),
                                          ),
                                        ),
                                        if (!otherTextField2)
                                          IconButton(
                                            icon: const Icon(Icons.add),
                                            onPressed: () {
                                              setState(() {
                                                otherTextField2 = true;
                                                containerHeight =
                                                    containerHeight + 50;
                                              });
                                            },
                                          ),
                                        if (otherTextField2)
                                          IconButton(
                                            icon: const Icon(Icons.remove),
                                            onPressed: () {
                                              setState(() {
                                                otherTextField2 = false;
                                                containerHeight =
                                                    containerHeight - 50;
                                              });
                                            },
                                          ),
                                      ],
                                    ),
                                    if (otherTextField2)
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: TextField(
                                                controller: otherController2,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText: 'Other disease',
                                                  hintText:
                                                      'Enter other disease',
                                                ),
                                              ),
                                            ),
                                            if (!ohterTextField3)
                                              IconButton(
                                                icon: const Icon(Icons.add),
                                                onPressed: () {
                                                  setState(() {
                                                    ohterTextField3 = true;
                                                    containerHeight =
                                                        containerHeight + 70;
                                                  });
                                                },
                                              ),
                                            if (ohterTextField3)
                                              IconButton(
                                                icon: const Icon(Icons.remove),
                                                onPressed: () {
                                                  setState(() {
                                                    ohterTextField3 = false;
                                                    containerHeight =
                                                        containerHeight - 50;
                                                  });
                                                },
                                              ),
                                          ],
                                        ),
                                      ),
                                    if (ohterTextField3)
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 10,
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: TextField(
                                                controller: otherController3,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText: 'Other disease',
                                                  hintText:
                                                      'Enter other disease',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      height: thirdCH,
                      width: 350,
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE0E0E0),
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: const Color(0xffD0D0D0)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF000000).withOpacity(0.2),
                            blurRadius: 5.0,
                            spreadRadius: 0,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Do you take any Medications?",
                              style: TextStyle(fontSize: 20),
                            ),
                            RadioListTile(
                              title: const Text(
                                'Yes (Please specify)',
                                style: TextStyle(fontSize: 20),
                              ),
                              value: "Yes",
                              groupValue: groupValue3,
                              onChanged: (value) {
                                setState(() {
                                  groupValue3 = value!;
                                  thirdCH = value == "Yes" ? 230 : 160;
                                });
                              },
                            ),
                            if (groupValue3 == "Yes")
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextField(
                                            controller: medicationController,
                                            decoration: const InputDecoration(
                                              labelText: 'Medications',
                                              hintText:
                                                  'Enter Medication you take',
                                            ),
                                          ),
                                        ),
                                        if (!medicationTextField2)
                                          IconButton(
                                            icon: const Icon(Icons.add),
                                            onPressed: () {
                                              setState(() {
                                                medicationTextField2 = true;
                                                thirdCH = thirdCH + 50;
                                              });
                                            },
                                          ),
                                        if (medicationTextField2)
                                          IconButton(
                                            icon: const Icon(Icons.remove),
                                            onPressed: () {
                                              setState(() {
                                                medicationTextField2 = false;
                                                thirdCH = thirdCH - 50;
                                              });
                                            },
                                          ),
                                      ],
                                    ),
                                    if (medicationTextField2)
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: TextField(
                                                controller:
                                                    medicationController2,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText: 'Medications',
                                                  hintText:
                                                      'Enter Medication you take',
                                                ),
                                              ),
                                            ),
                                            if (!medicationTextField3)
                                              IconButton(
                                                icon: const Icon(Icons.add),
                                                onPressed: () {
                                                  setState(() {
                                                    medicationTextField3 = true;
                                                    thirdCH = thirdCH + 75;
                                                  });
                                                },
                                              ),
                                            if (medicationTextField3)
                                              IconButton(
                                                icon: const Icon(Icons.remove),
                                                onPressed: () {
                                                  setState(() {
                                                    medicationTextField3 =
                                                        false;
                                                    thirdCH = thirdCH - 50;
                                                  });
                                                },
                                              ),
                                          ],
                                        ),
                                      ),
                                    if (medicationTextField3)
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 10,
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: TextField(
                                                controller:
                                                    medicationController3,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText: 'Medications',
                                                  hintText:
                                                      'Enter Medication you take',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            RadioListTile(
                              title: const Text(
                                'No',
                                style: TextStyle(fontSize: 20),
                              ),
                              value: "No",
                              groupValue: groupValue3,
                              onChanged: (value) {
                                setState(() {
                                  groupValue3 = value!;
                                  thirdCH = value == "No" ? 160 : 230;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                height: secondCH,
                width: 338,
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFE0E0E0),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: const Color(0xffD0D0D0)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF000000).withOpacity(0.2),
                      blurRadius: 5.0,
                      spreadRadius: 0,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Do you have any known allergies to medications, foods or others?",
                        style: TextStyle(fontSize: 20),
                      ),
                      RadioListTile(
                        title: const Text(
                          'Yes (Please specify)',
                          style: TextStyle(fontSize: 20),
                        ),
                        value: "Yes",
                        groupValue: groupValue2,
                        onChanged: (value) {
                          setState(() {
                            groupValue2 = value!;
                            secondCH = value == "Yes" ? 250 : 180;
                          });
                        },
                      ),
                      if (groupValue2 == "Yes")
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      controller: allergiesController,
                                      decoration: const InputDecoration(
                                        labelText:
                                            'What allergies do you have?',
                                        hintText: 'Enter allergies you have',
                                      ),
                                    ),
                                  ),
                                  if (!allergiesTextField2)
                                    IconButton(
                                      icon: const Icon(Icons.add),
                                      onPressed: () {
                                        setState(() {
                                          allergiesTextField2 = true;
                                          secondCH = secondCH + 60;
                                        });
                                      },
                                    ),
                                  if (allergiesTextField2)
                                    IconButton(
                                      icon: const Icon(Icons.remove),
                                      onPressed: () {
                                        setState(() {
                                          allergiesTextField2 = false;
                                          secondCH = secondCH - 50;
                                        });
                                      },
                                    ),
                                ],
                              ),
                              if (allergiesTextField2)
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          controller: allergiesController2,
                                          decoration: const InputDecoration(
                                            labelText:
                                                'What allergies do you have?',
                                            hintText:
                                                'Enter allergies you have',
                                          ),
                                        ),
                                      ),
                                      if (!allergiesTextField3)
                                        IconButton(
                                          icon: const Icon(Icons.add),
                                          onPressed: () {
                                            setState(() {
                                              allergiesTextField3 = true;
                                              secondCH = secondCH + 80;
                                            });
                                          },
                                        ),
                                      if (allergiesTextField3)
                                        IconButton(
                                          icon: const Icon(Icons.remove),
                                          onPressed: () {
                                            setState(() {
                                              allergiesTextField3 = false;
                                              secondCH = secondCH - 50;
                                            });
                                          },
                                        ),
                                    ],
                                  ),
                                ),
                              if (allergiesTextField3)
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          controller: allergiesController3,
                                          decoration: const InputDecoration(
                                            labelText:
                                                'What allergies do you have?',
                                            hintText:
                                                'Enter allergies you have',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                      RadioListTile(
                        title: const Text(
                          'No',
                          style: TextStyle(fontSize: 20),
                        ),
                        value: "No",
                        groupValue: groupValue2,
                        onChanged: (value) {
                          setState(() {
                            groupValue2 = value!;
                            secondCH = value == "No" ? 180 : 250;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 80, right: 80, bottom: 20, top: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0066FF),
                    fixedSize: const Size(100, 45),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                  ),
                  child: const Text(
                    "Save",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
