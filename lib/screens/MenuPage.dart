import 'package:flutter/material.dart';

class menuPage extends StatefulWidget {
  const menuPage({super.key});

  @override
  State<menuPage> createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Text("Menu Page") ,)
    ),);
  }
}