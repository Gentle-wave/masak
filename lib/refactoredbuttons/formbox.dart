// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Formbox extends StatelessWidget {
  Formbox({required this.hintText});

  String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
     
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
