// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
                height: 54.0,
              ),
              Formbox(hintText: 'Name'),
              SizedBox(
                height: 18,
              ),
              Formbox(hintText: 'Email'),
               SizedBox(
                height: 18,
              ),
              Formbox(hintText: 'Password'),
               SizedBox(
                height: 20,
              ),
              Formbox(hintText: 'Confirm Password')
            ],
          ),
        ),
      ),
    );
  }
}

class Formbox extends StatelessWidget {
  Formbox({@required this.hintText});

  String? hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 310.0,
      child: Material(
       elevation:20,
        shadowColor: Colors.white60,
       borderRadius: BorderRadius.circular(16.0),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xff423B34),
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              
              ),
              borderSide: BorderSide.none,
            ),
          ),
        ),

      ),
    );
  }
}
