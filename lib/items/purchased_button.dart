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
        onPressed: () {
          PurchasedList.add(Cars[index]);
        });
  }
}
