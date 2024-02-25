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
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.height * 0.6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MyTextField('First name'),
              MyTextField('Last name'),
              MyTextField('Patronymic'),
              MyTextField('Phone'),
              MyTextField('Data of birthday'),
              Row(children: [
                Text('Male'),
                SwitchField(),
                Text('Female'),
                SwitchField(),
              ],),
              Container(
                  padding: EdgeInsets.all(10),
                child: FloatingActionButton.extended(onPressed: (){
                  Navigator.pop(context);},
                  label: Text("Save"),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

