import 'package:flutter/material.dart';
import '../items/bottom_bar.dart';
import '../items/purchased_list.dart';

class Purchased extends StatefulWidget {
  const Purchased({Key? key}) : super(key: key);

  @override
  State<Purchased> createState() => _PurchasedState();
}

class _PurchasedState extends State<Purchased> {
  int count_of_product = 1;

  _PurchasedState();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text(
        'Покупка',
        style: TextStyle(fontSize: 40),
      ))),
      body: Container(
        child: ListView.builder(
            itemCount: PurchasedList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Row(children: [
                  Expanded(
                    child: Image.network(PurchasedList[index].Photo[0]),
                  ),
                  Column(children: [
                    Text(PurchasedList[index].Name),
                    Text("Цена: " + PurchasedList[index].Price.toString()),
                  ]),
                  Text("Количество: " + count_of_product.toString()),
                  Expanded(
                    child: Column(children: [
                      IconButton(
                          icon: Icon(Icons.exposure_plus_1),
                          iconSize: 15.0,
                          color: Colors.blue,
                          onPressed: () {
                            setState(() {
                              count_of_product++;
                            });
                          }),
                      IconButton(
                          icon: Icon(Icons.exposure_minus_1),
                          iconSize: 15.0,
                          color: Colors.blue,
                          onPressed: () {
                            setState(() {
                              count_of_product--;
                            });
                          }),
                    ]),
                  ),
                ]),
              );
            }),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
