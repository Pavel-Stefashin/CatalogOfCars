import 'package:flutter/material.dart';
import 'package:laba2/items/objects.dart';


class Authorization extends StatelessWidget {
  get floatingActionButton => null;

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
              MyTextField('Full name'),
              MyTextField('Phone'),
              
              Container(
                  padding: EdgeInsets.all(10),
                child: FloatingActionButton.extended(onPressed: (){
                  Navigator.pop(context);},
                  label: Text("Login"),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

