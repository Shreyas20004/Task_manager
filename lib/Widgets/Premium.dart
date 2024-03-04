import 'package:flutter/material.dart';
import 'package:tms/Widgets/constatant.dart';

class GoPremium extends StatefulWidget {
  const GoPremium({super.key});

  @override
  State<GoPremium> createState() => _GoPremiumState();
}

class _GoPremiumState extends State<GoPremium> {
  @override
  Widget build(BuildContext context) {
      var he = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(he * 0.004) ,
          decoration: BoxDecoration(
            color: kwhite,
            borderRadius: BorderRadius.circular(he *0.002),
            gradient: const LinearGradient(
            colors: [
            Color (0xffFDC838),
            Color (0xffF37335),
            ],
            begin:Alignment.topLeft,
            end: Alignment.bottomRight,
            )
          ),
        ),
      ],
    );
  }
}