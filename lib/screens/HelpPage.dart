import 'package:flutter/material.dart';
import 'package:tms/components/upper_header.dart';
import 'package:tms/screens/MenuPage.dart';
import 'package:tms/screens/PrivacySecurity.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var he =MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(body: Padding(padding:EdgeInsets.only(left: he * 0.03,right:he * 0.03),
    child: Column(children: [
      upperHeader("Help", context, false,page: MenuPage()),
      SizedBox(height: he*0.045),
      CustomOption('Report a problem',Icons.warning_amber_rounded, (){}),
      CustomOption('Account Status',Icons.account_circle_rounded, (){}),
      CustomOption('Privacy & Security help',Icons.security, (){}),
    ]),
    ),
    ));
  }
}