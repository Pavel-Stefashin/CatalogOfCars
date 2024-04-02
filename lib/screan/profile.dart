import 'package:flutter/material.dart';
import 'package:laba2/screan/purchase.dart';
import '../items/bottom_bar.dart';
import '../items/users_list.dart';

class ProfileScr extends StatelessWidget {
  int Id;

  ProfileScr(this.Id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text(
        'Профиль',
        style: TextStyle(fontSize: 40),
      ))),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(children: [
          Expanded(
            child: Column(
                textDirection: TextDirection.ltr,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(Users[Id].Photo),
                  Text("Фамилия: " + Users[Id].FName),
                  Text("Имя: " + Users[Id].LName),
                  Text("Отчество: " + Users[Id].Patronymic),
                  Text("Email: " + Users[Id].Email),
                  Text("Телефон: " + Users[Id].Phone),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Center(child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PurchasedScr()));
                        },
                        child: Text("Покупки")),)
                  )
                ]),
          )
        ]),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
