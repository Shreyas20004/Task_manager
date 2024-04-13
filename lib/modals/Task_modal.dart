import 'package:flutter/material.dart';
import 'package:tms/Widgets/constant.dart';

class Task {
  IconData? icon;
  String? title;
  Color? bgcolor;
  Color? iconcolor;
  Color? btncolor;
  num? left;
  List<Map<String, dynamic>>? desc;
  num? done;
  bool isLast;

  Task(
      {this.icon,
      this.title,
      this.bgcolor,
      this.iconcolor,
      this.btncolor,
      this.left,
      this.desc,
      this.done,
      this.isLast = false});
  static List<Task> generateTasks() {
    return [
      Task(
        icon: Icons.person_rounded,
        title: 'Personal',
        bgcolor: kBlueLight,
        iconcolor: kBlueDark,
        btncolor: kBlue,
        left: 5,
        desc: [
          {
            'time': '9:00 AM',
            'title': 'Create a video',
            'slot': '9:00 AM - 10:00 AM',
            't1Color': kRedDark,
            'bgcolor': kRedLight,
          },
          {
            'time': '10:00 AM',
            'title': 'Watching a movie',
            'slot': '10:00 AM - 11:00 AM',
            't1Color': kRedDark,
            'bgcolor': kRedLight,
          },
          {
            'time': '11:00 AM',
            'title': '',
            'slot': '',
            't1Color': kRedDark,
            'bgcolor': kRedLight,
          },
          {
            'time': '12:00 PM',
            'title': 'Go to the Gym',
            'slot': '12:00 PM - 1:00 PM',
            't1Color': kRedDark,
            'bgcolor': kRedLight,
          },
          {
            'time': '1:00 AM',
            'title': 'Call with client',
            'slot': '1:00 PM - 2:00 PM',
            't1Color': Colors.grey.withOpacity(0.3),
            'bgcolor': kYellowLight,
          },
        ],
        done: 3,
        isLast: false,
      ),
      Task(
        icon: Icons.favorite_rounded,
        title: 'Health',
        bgcolor: kRedLight,
        iconcolor: kRedDark,
        btncolor: kRed,
        left: 2,
        done: 6,
        isLast: false,
      ),
      Task(
        icon: Icons.work,
        title: 'Work',
        bgcolor: kYellowLight,
        iconcolor: kYellowDark,
        btncolor: kYellow,
        left: 1,
        done: 4,
        isLast: false,
      ),
      Task(
        icon: Icons.person_rounded,
        title: 'Personal',
        bgcolor: kBlueLight,
        iconcolor: kBlueDark,
        btncolor: kBlue,
        left: 5,
        done: 3,
        isLast: true,
      ),
    ];
  }
}
