// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';

class Displays extends StatelessWidget {
  const Displays({required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Image.asset(
        image,
        height: 52,
        width: 53,
      ),
      radius: 35.0,
      backgroundColor: Colors.white,
    );
  }
}

class Label_text extends StatelessWidget {
  const Label_text({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
