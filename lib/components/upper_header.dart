import 'package:flutter/material.dart';
import 'package:tms/components/CostumText.dart';

Widget upperHeader(String text,BuildContext context, bool isIcon, required Widget page()){
  var he = MediaQuery.of(context).size.height;
  return Padding(padding: EdgeInsets.only(top:he *0.03),);
  child: Row(
    children:[
      GestureDetector(
        onTap: (){
          Navigator.push(context as BuildContext,MaterialPageRoute builer:(context) =>page); 
        },
      )
    ]
  )
}