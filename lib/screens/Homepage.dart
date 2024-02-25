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
    backgroundColor: kwhite,
    elevation: 0,
    title: Row(
      children:<Widget> [
        Container(
          margin: EdgeInsets.only(left: 10,top: 5),
          height:45,
          width: 45,
          decoration: BoxDecoration(
            color: klightgrey,
            borderRadius: BorderRadius.circular(10)

          ),
        )
      ]
    )

  );
}