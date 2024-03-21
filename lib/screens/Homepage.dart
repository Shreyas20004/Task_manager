import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tms/Widgets/Premium.dart';
import 'package:tms/Widgets/constant.dart';
import 'package:tms/Widgets/tasks.dart';
import 'package:tms/screens/MenuPage.dart';
import 'package:tms/screens/ProfilePage.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  List<Widget> pages = [
    const Homepage(),
    const ProfilePage(),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 5,
              )
            ]),
        child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: BottomNavigationBar(
              backgroundColor: kwhite,
              selectedItemColor: Colors.blueAccent,
              unselectedItemColor: Colors.grey,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_rounded, size: 30),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_rounded, size: 30),
                  label: "Person",
                ),
              ],
              onTap: (index) {
                setState(() {
                  activeIndex = index;
                });
              },
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: kdark,
        child: const Icon(
          Icons.add,
          color: kwhite,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: pages[activeIndex],
    );
  }
}

AppBar _buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: kwhite,
    elevation: 0,
    title: Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 10, top: 5),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              color: klightgrey, borderRadius: BorderRadius.circular(10)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/img1.jpeg'),
          ),
        ),
        const SizedBox(width: 20),
        Text(
          'Hello, User',
          style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.more_vert,
          color: Colors.grey.shade600,
          size: 35,
        ),
        onPressed: () {
          Navigator.push(context as BuildContext,MaterialPageRoute (builder:(context) => const MenuPage()));
        },
      )
    ],
  );
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
              right: 8.0, left: 8.0, top: 15.0, bottom: 10.0),
          child: GoPremium(),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: Text(
            'Tasks',
            style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(child: Tasks())
      ],
    );
  }
}
