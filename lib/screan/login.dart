import 'package:flutter/material.dart';
import 'package:laba2/items/objects.dart';
import 'package:laba2/screan/authorization.dart';
import 'package:laba2/screan/catalog.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(
        child: Text('Do you have an account?',
        style: TextStyle(fontSize: 40)
        )
      )
      ),
      body: Center(
          child: Container(
            height: 300, 
            width: 450, 
            child: Column(
              children: [
                MyTextField('Full name'), 
                MyTextField('Password'), 
                Container(
                  padding: EdgeInsets.all(10),
                    child: Column(children: <Widget>[
                      FloatingActionButton.extended(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Catalog()));},
                          label: Text("Login")), 
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Authorization()));
                        }, child: Text('Authorization'))
                    ])
                ),
              ],
            ),
          )
      ),
    );
  }
}

