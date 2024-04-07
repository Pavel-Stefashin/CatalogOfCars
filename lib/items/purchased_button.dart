import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laba2/items/cars_list.dart';
import 'package:laba2/items/purchased_list.dart';
import 'package:laba2/screan/purchase.dart';

class PurchasedButton extends StatelessWidget {
  int index;
  int CountOfProduct;

  PurchasedButton(this.index, this.CountOfProduct);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text("Купить"),
        onPressed: () => showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Покупка'),
        content: const Text('Подтвердить?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Нет'),
            child: const Text('Нет'),
          ),
          TextButton(
            onPressed: () {Navigator.pop(context, 'Да');
            PurchasedList.add(Cars[index]);
            Cars[index].Count ++;},
            child: const Text('Да'),
          ),
        ],
      ),
    ),);
  }
}
