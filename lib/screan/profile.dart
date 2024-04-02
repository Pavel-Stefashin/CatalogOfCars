import 'package:flutter/material.dart';
import '../items/bottom_bar.dart';
import '../items/users_list.dart';

class ProfileScr extends StatelessWidget {
  int Id;

  ProfileScr(this.Id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Row(children: [
        Image.network(Users[Id].Photo),
        Expanded(
            child: Column(children: [
               Text(Users[Id].FName),
               Text(Users[Id].LName),
               Text(Users[Id].Patronymic),
               Text(Users[Id].Email),
               Text(Users[Id].Phone),
        ])),
      ]),
    ]),
        bottomNavigationBar: BottomBar(),
    );
  }
}
