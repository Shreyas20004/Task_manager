import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tms/components/upper_header.dart';
import "package:tms/screens/MenuPage.dart";



class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body:
          Padding(padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
          child: Column(
            children: [
              upperHeader('Contact Us', context, true, page: MenuPage()),
              SizedBox(
                height: he * 0.02,
              ),
              Container(
                height: he * 0.27,
                width: he * 0.35,
                
                child: Image.asset('assets/img2.png'),
              ),
              Text(
                
                'We are here to help you',
                
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: he * 0.05,
              ),
              Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: double.infinity,
                      child: Padding(
                          padding: EdgeInsets.only(
                            left: he * 0.03,
                            right: he * 0.03,
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Name',
                                    hintText: 'Enter your name',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    hintText: 'Enter your email',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    labelText: 'Message',
                                    hintText: 'Enter your message',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: he * 0.06,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text("Send"),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey.shade900,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ])),
                    )
            ],
          ),),
    ));
  }
}