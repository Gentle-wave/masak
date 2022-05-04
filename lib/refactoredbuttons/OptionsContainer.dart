// ignore_for_file: must_be_immutable, prefer_const_constructors
import 'package:flutter/material.dart';

class OptionsContainer extends StatelessWidget {
  OptionsContainer({Key? key, required this.text}) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12.0),
      decoration: blackboxdecorator(),
      width: 125,
      height: 42,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          //fontFamily: 'Inter',
        ),
      ),
    );
  }

  BoxDecoration blackboxdecorator() {
    return BoxDecoration(
      color: Color(0xff181818),
      borderRadius: BorderRadius.circular(15),
    );
  }
}

 // appBar: AppBar(
      //   title: const Text(
      //     'screen2',
      //     style: TextStyle(
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
