
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:task_manager_system/features/pending.dart';
import 'package:task_manager_system/features/reminders.dart';
import 'package:task_manager_system/features/reports.dart';



class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}
int index=0;
List<Map<String, dynamic>> pageDetails = [
  {

    'page':  Pending(),
  },
  {

    'page':  Completer(),
  },
  {

    'page':  Reminders(),
  }, {

    'page':  Reports(),
  },
];

class _BottomNavState extends State<BottomNav> {
   MaterialColor selectedColor = Colors.green;
   Color unSelectedColor = Color(0xff8C8C8C);
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: pageDetails[index]['page'],
      bottomNavigationBar:StylishBottomBar(

        items: [
          BottomBarItem(
            icon: const Icon(
              Icons.style_outlined,
            ),
            selectedIcon: const Icon(
              Icons.style,
            ),
            selectedColor: selectedColor,
            unSelectedColor: unSelectedColor,
            title: const Text('Pending'),
          ),
          BottomBarItem(
            icon: const Icon(Icons.star_border_rounded),
            selectedIcon: const Icon(Icons.star_rounded),
            selectedColor: selectedColor,
            unSelectedColor: unSelectedColor,
            title: const Text('Completed'),
          ),

          BottomBarItem(
            icon: const Icon(
              Icons.access_time_outlined,
            ),
            selectedIcon: const Icon(
              Icons.access_time_filled_outlined,
            ),
            selectedColor: selectedColor,
            unSelectedColor: unSelectedColor,
            title: const Text('Reminders'),
          ),
          BottomBarItem(
            icon: const Icon(
             Icons.bar_chart_outlined,
            ),
            selectedIcon: const Icon(
              Icons.access_time_filled_outlined,
            ),
            selectedColor: selectedColor,
            unSelectedColor: unSelectedColor,
            title: const Text('Reports'),
          ),
        ],
        hasNotch: false,
        fabLocation: StylishBarFabLocation.center,
        currentIndex: index,
        onTap: (index) {

        },
        option: AnimatedBarOptions(
          // iconSize: 32,
          barAnimation: BarAnimation.fade,
          iconStyle: IconStyle.Default,
          // opacity: 0.3,
        ),
      )
    );
  }
}
