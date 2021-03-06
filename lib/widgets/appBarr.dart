import 'dart:ui';

import 'package:flutter/material.dart';
import '../screens/events_screen.dart';
import '../screens/project_screen.dart';
import '../screens/homepage.dart';
import '../screens/knowUs.dart';
// import 'screens/knowUs.dart';

Widget appBarr(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            child: Image.asset(
              'assets/images/CC-Logo.png',
              fit: BoxFit.scaleDown,
            ),
            radius: MediaQuery.of(context).size.width*0.017,
            backgroundColor: Colors.transparent,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Coding Club",
                style: TextStyle(
                  color: Colors.white,
                  fontSize:MediaQuery.of(context).size.width*0.02,
                ),
              ),
              Text(
                "Blog",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width*0.015,
                ),
              )
            ],
          ),
        ],
      ),
    ),
    actions: [
      Flexible(
        child: FlatButton(
          onPressed: () {
           Navigator.pushNamed(context, HomeScreen.routeName);
          },
          child: Text(
            'Home',
            style: TextStyle(
              color: Color(0xFFF638DC),
              fontSize: MediaQuery.of(context).size.width*0.017,
            ),
          ),
        ),
      ),
      Flexible(
        child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, EventScreen.routeName);
          },
          child: Text(
            'Events',
            style: TextStyle(
              color: Color(0xFFF638DC),
              fontSize: MediaQuery.of(context).size.width*0.017,
            ),
          ),
        ),
      ),
      Flexible(
        child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, ProjectScreen.routeName);
          },
          child: Text(
            'Projects',
            softWrap: true,
            style: TextStyle(
              color: Color(0xFFF638DC),
              fontSize: MediaQuery.of(context).size.width*0.017,
            ),
          ),
        ),
      ),
      Flexible(
        child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, KnowUsScreen.routeName);
          },
          child: Text(
            'Members',
            style: TextStyle(
              color: Color(0xFFF638DC),
              fontSize: MediaQuery.of(context).size.width*0.017,
            ),
          ),
        ),
      ),
      
    ],
    backgroundColor: Color(0xFF181818),
    elevation: 0,
  );
}
