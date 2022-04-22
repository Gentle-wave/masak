// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable
import 'package:masak/signuppage.dart';

import 'OptionsContainer.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background10.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 100, 100, 100).withOpacity(0.6),
              borderRadius: BorderRadius.circular(20),
            ),
            height: 340,
            width: 310,
            padding: const EdgeInsets.all(20.00),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Image(
                  image: AssetImage('images/group6.png'),
                  height: 68.09,
                  width: 110.7,
                ),
                Text(
                  'Delicious and satisfying 😋',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    fontSize: 15,
                  ),
                ),
                Row(
                  children: [
                    OptionsContainer(
                      text: 'Google',
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    OptionsContainer(
                      text: 'Facebook',
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 12.0),
                  decoration: BoxDecoration(
                    color: Color(0xff181818),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Signuppage(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign up as Guest',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        //fontFamily: 'Inter',
                      ),
                    ),
                  ),
                  height: 42.0,
                  width: 275.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?'),
                    SizedBox(width: 3),
                    GestureDetector(
                      onTap: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signuppage(),
                          ),
                        );
                      }),
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          color: Color(0xffFE8E00),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
