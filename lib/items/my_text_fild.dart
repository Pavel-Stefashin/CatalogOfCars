import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String fildTitle = '';

  MyTextField(String myTextField_Title)
  {
    fildTitle = myTextField_Title;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            labelText: fildTitle
        )
    );
  }
}