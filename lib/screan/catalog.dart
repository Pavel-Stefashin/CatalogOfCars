import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:laba2/items/objects.dart';

class Catalog extends StatelessWidget {
  const Catalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(
            child: Text('Make an account',
                style: TextStyle(fontSize: 40)
            )
        )
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(),
              ],
            ),
          ),
        )
    );
  }
}
