import 'package:flutter/material.dart';
import 'basket_list.dart';
import 'cars_list.dart';

class BasketButton extends StatefulWidget {

  int ID;
  bool Delete;
  String Text;

  BasketButton(this.ID, this.Delete, this.Text);

  @override
  State<BasketButton> createState() => _BasketButtonState(ID, Delete, Text);
}

class _BasketButtonState extends State<BasketButton> {

  int ID;
  bool Delete;
  String Text;

  _BasketButtonState(this.ID, this.Delete, this.Text);

  Icon _icon = Icon(Icons.shopping_basket_outlined);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: _icon,
      iconSize: 15.0,
      color: Colors.blue,
      onPressed: () {
        if(Delete){
          BascketList.remove(Cars[ID]);
        }
        else{
          setState(() {
            _icon = Icon(Icons.shopping_basket);
          });
          BascketList.add(Cars[ID]);
        }
      },
      tooltip: Text,
      splashColor: Colors.blueAccent,
    );
  }
}
