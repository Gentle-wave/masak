// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'refactoredbuttons/formbox.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({Key? key}) : super(key: key);

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.all(25.00),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0XFF181818), Color.fromARGB(255, 206, 168, 153)],
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 30.0,
                    color: Colors.white,
                    //color: ,
                  ),
                ),
              ),
              SizedBox(
                height: 31.47,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: const Text(
                  'List',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 20.00,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Save delicious recipes and get your personal content',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.0,
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Formbox(hintText: 'Name'),
              SizedBox(
                height: 15,
              ),
              Formbox(hintText: 'Email'),
              SizedBox(
                height: 15,
              ),
              Formbox(hintText: 'Password'),
              SizedBox(
                height: 15,
              ),
              Formbox(hintText: 'Confirm Password'),
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.square,
                    ),
                    iconSize: 18.00,
                    color: Colors.white,
                    onPressed: () {
                      print("Pressed");
                    },
                  ),
                  Expanded(
                    child: Text(
                      'I\'d like to receive recipe inspiration, foraging, updates and more',
                      //maxLines: 2,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100,),
              SizedBox(
                height: 50.0,
                width: 310.0,
                child: Material(
                  shadowColor: Colors.white60,
                  elevation: 20.0,
                  borderRadius: BorderRadius.circular(16.0),
                  color: Color(0xffFE8E00),
                  child: Center(
                    child: Text(
                      'Carry on',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
