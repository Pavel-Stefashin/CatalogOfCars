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

class DateField extends StatelessWidget {
  DateField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class SwitchField extends StatefulWidget {
  const SwitchField({super.key});

  @override
  State<SwitchField> createState() => _SwitchFieldState();
}

class _SwitchFieldState extends State<SwitchField> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Colors.red,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
