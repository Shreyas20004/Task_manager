import 'package:flutter/material.dart';

class menuPage extends StatefulWidget {
  const menuPage({super.key});

  @override
  State<menuPage> createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(
    backgroundColor: Colors.white,
    body:Padding(
      padding:  EdgeInsets.only(left: he *0.03,right: he *0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding (padding:  EdgeInsets.only(top: he *0.03,bottom: he *0.03)),
        ],
      ),
    )
    )
    );
  }
}