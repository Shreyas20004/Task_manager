import 'package:flutter/material.dart';


class Tasks extends StatelessWidget{
  const Tasks({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder()
    );
  }
}