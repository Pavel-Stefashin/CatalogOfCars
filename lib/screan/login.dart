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
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Column(
              children: [
                MyTextField('Phone'),
                MyTextField('Password'), 
                Container(
                  padding: EdgeInsets.all(10),
                    child: Column(children: <Widget>[
                      FloatingActionButton.extended(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Catalog()));},
                          label: Text("Sing in")),
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

