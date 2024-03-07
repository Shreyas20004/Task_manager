import 'package:flutter/material.dart';
import 'package:tms/components/CustomText.dart';

Widget upperHeader(String text,BuildContext context, bool isIcon, {required Widget page}){
  var he = MediaQuery.of(context).size.height;
  return Padding(padding: EdgeInsets.only(top:he *0.03),
  child: Row(
    children:[
      GestureDetector(
        onTap: (){
          Navigator.push(context as BuildContext,MaterialPageRoute(builder:(context) =>page)); 
        },
        child: Icon(Icons.arrow_back_rounded,size: 30,color: Colors.black,),
      ),
      SizedBox(
        width: he*0.03,
      ),
      customText(text, 28),
      Expanded(child: Container()),
      isIcon? Icon(Icons.search,size: 30,color: Colors.black,)
      :Container(),
    ]
  )
  );
}