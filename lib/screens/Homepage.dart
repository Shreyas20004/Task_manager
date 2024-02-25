import 'package:flutter/material.dart';
import  'package:tms/Widgets/constatant.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
     
    );
  }
}

AppBar _buildAppBar(){
  return AppBar(
    backgroundColor: Colors.white,

  );
}