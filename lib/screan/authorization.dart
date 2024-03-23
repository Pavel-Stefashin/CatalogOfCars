import 'package:flutter/material.dart';
import '../../items/my_text_fild.dart';
import '../../items/switch_fild.dart';


class Authorization extends StatelessWidget {
  get floatingActionButton => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(
          child: Text('Давайте создадим аккаунт',
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
              MyTextField('Фамилия'),
              MyTextField('Имя'),
              MyTextField('Отчество'),
              MyTextField('Телефон'),
              MyTextField('Дата рождения'),
              Row(children: [
                Text('Мужчина'),
                SwitchField(),
                Text('Женщина'),
                SwitchField(),
              ],),
              Container(
                  padding: EdgeInsets.all(10),
                child: FloatingActionButton.extended(onPressed: (){
                  Navigator.pop(context);},
                  label: Text("Сохранить"),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

