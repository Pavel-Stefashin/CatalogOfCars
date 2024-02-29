import 'package:flutter/material.dart';
import 'package:laba2/items/objects.dart';
import 'package:laba2/screan/Catalogs/cars.dart';
import 'package:laba2/screan/authorization.dart';
import 'package:laba2/screan/Catalogs/products.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(
        child: Text('У вас есть аккаунт?',
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
                MyTextField('Телефон'),
                MyTextField('Пароль'),
                Container(
                  padding: EdgeInsets.all(10),
                    child: Column(children: <Widget>[
                      // FloatingActionButton.extended(onPressed: (){
                      //   Navigator.push(context, MaterialPageRoute(builder: (context) => Catalog()));},
                      //     label: Text("Войти")),
                       Container(padding: EdgeInsets.only(top: 8, bottom: 8),
                         child: FloatingActionButton.extended(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => scrCars()));},
                           label: Text("Каталог машин")),),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Authorization()));
                        }, child: Text('Зарегистрироваться'))
                    ])
                ),
              ],
            ),
          )
      ),
    );
  }
}

