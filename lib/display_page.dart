// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, camel_case_types

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masak/refactoredbuttons/scroll.dart';

class Displaypage extends StatefulWidget {
  const Displaypage({Key? key}) : super(key: key);

  @override
  State<Displaypage> createState() => _DisplaypageState();
}

class _DisplaypageState extends State<Displaypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 60.0,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 400),
        animationCurve: Curves.easeInOutExpo,
        backgroundColor: Color.fromARGB(255, 206, 168, 153),
        items: <Widget>[
          Icon(
            CupertinoIcons.home,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.search,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            // FontAwesome
            Icons.message,
            size: 25,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsetsDirectional.all(20.0),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromARGB(255, 206, 168, 153),
                    Color.fromARGB(255, 98, 92, 92)
                  ],
                  stops: [
                    0.7,
                    1,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.00),
                  bottomRight: Radius.circular(20.00),
                )),
            height: 202.00,
            child: Column(
              children: [
                SizedBox(
                  height: 48.0,
                ),
                Image.asset(
                  'images/group6.png',
                  height: 68.09,
                  width: 110.7,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20.00,
                        backgroundColor: Colors.black,
                        child: Icon(
                          CupertinoIcons.profile_circled,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Username',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 150.0,
                      ),
                      Icon(
                        CupertinoIcons.cart,
                        color: Colors.white,
                        size: 22.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '0',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 25,
              left: 30,
            ),
            child: Text(
              'Options Menu',
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 240,
                width: 360,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'images/makanan.jpg',
                    ),
                    fit: BoxFit.fill
                  ),
                ),
                // child: Image.asset(
                //   'images/makanan.jpg',
                //   height: 240,
                // ),
              ),
            ],
          ),
          SizedBox(
            height: 27,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 30,
            ),
            child: Text(
              'Options Menu',
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    Displays(
                      image: 'images/21.png',
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 18,
                      ),
                      child: Label_text(text: 'Fresh Vegetables'),
                    ),
                  ],
                ),
                SizedBox(
                  width: 12.0,
                ),
                Column(
                  children: [
                    Displays(
                      image: 'images/18.png',
                    ),
                    Label_text(text: 'Basic needs'),
                  ],
                ),
                SizedBox(
                  width: 25.0,
                ),
                Column(
                  children: [
                    Displays(
                      image: 'images/2.png',
                    ),
                    Label_text(text: 'Fresh fruit'),
                  ],
                ),
                SizedBox(
                  width: 12.0,
                ),
                Column(
                  children: [
                    Displays(
                      image: 'images/14.png',
                    ),
                    Label_text(text: 'Juices and Drinks'),
                  ],
                ),
              ],
            ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
