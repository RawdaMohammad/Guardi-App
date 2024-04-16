import 'package:flutter/material.dart';
import 'package:guardi_app/screens/homePage.dart';
import 'package:guardi_app/screens/home_page.dart';
import 'package:guardi_app/screens/setting.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  // _MenuState() {
  //   selectedIndex = 3;
  // }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                    width: 4.0,
                    color:
                        Color(0xFF9C9C9C)), // Adjust width and color as needed
              ),
            ),
            child: Theme(
                data: Theme.of(context).copyWith(
                  canvasColor: const Color(0xFF858585),
                ),
                // ignore: sort_child_properties_last
                child: BottomNavigationBar(
                  currentIndex: selectedIndex,
                  onTap: (val) {
                    setState(() {
                      selectedIndex = val;
                      if (val == 0) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const HomePage();
                        }));
                      }
                    });
                  },
                  backgroundColor: Colors.red,
                  selectedItemColor: Colors.black,
                  unselectedItemColor: Colors.white,
                  selectedFontSize: 20,
                  showUnselectedLabels: true,
                  selectedLabelStyle:
                      const TextStyle(fontWeight: FontWeight.bold),
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: "Home",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.notifications),
                      label: "Notification",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      label: "Profile",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.menu),
                      label: "Menu",
                    ),
                  ],
                ))),
        body: Container(
          width: screenWidth,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF7D7D7D), Color(0x00FFFFFF)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              tileMode: TileMode.clamp,
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 45),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              //Setting-----------------
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Setting();
                  }));
                },
                child: Container(
                  child: const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.settings_outlined,
                              color: Colors.black,
                            ),
                            SizedBox(width: 7),
                            Text(
                              'Settings',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(width: 225),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromARGB(255, 211, 208, 208),
                              size: 18,
                            ),
                          ],
                        ),
                        SizedBox(height: 7),
                        Divider(
                          color: Color.fromARGB(255, 211, 208, 208),
                          thickness: 1,
                          indent: 10,
                          endIndent: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //Help--------------
              const SizedBox(height: 30),
              Container(
                child: const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.help_outline,
                            color: Colors.black,
                          ),
                          SizedBox(width: 7),
                          Text(
                            'Help & support',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(width: 160),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromARGB(255, 211, 208, 208),
                            size: 18,
                          ),
                        ],
                      ),
                      SizedBox(height: 7),
                      Divider(
                        color: Color.fromARGB(255, 211, 208, 208),
                        thickness: 1,
                        indent: 10,
                        endIndent: 30,
                      ),
                    ],
                  ),
                ),
              ),
              //feedback-----------------
              const SizedBox(height: 30),
              Container(
                child: const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.send_outlined,
                            color: Colors.black,
                          ),
                          SizedBox(width: 7),
                          Text(
                            'Send feedback',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(width: 160),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromARGB(255, 211, 208, 208),
                            size: 18,
                          ),
                        ],
                      ),
                      SizedBox(height: 7),
                      Divider(
                        color: Color.fromARGB(255, 211, 208, 208),
                        thickness: 1,
                        indent: 10,
                        endIndent: 30,
                      ),
                    ],
                  ),
                ),
              ),
              //logout---------------
              const SizedBox(height: 30),
              Container(
                child: const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.logout,
                            color: Color(0xFF0166FF),
                          ),
                          SizedBox(width: 7),
                          Text(
                            'Log out',
                            style: TextStyle(
                              color: Color(0xFF0166FF),
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                    ],
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
