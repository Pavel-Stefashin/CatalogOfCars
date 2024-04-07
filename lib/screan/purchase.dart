import 'package:flutter/material.dart';
import '../items/bottom_bar.dart';
import '../items/purchased_list.dart';

class PurchasedScr extends StatefulWidget {
  const PurchasedScr({Key? key}) : super(key: key);

  @override
  State<PurchasedScr> createState() => _PurchasedScrState();
}

class _PurchasedScrState extends State<PurchasedScr> {

  _PurchasedScrState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text(
        'Покупки',
        style: TextStyle(fontSize: 40),
      ))),
      body: Container(
        child: ListView.builder(
            itemCount: PurchasedList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Row(children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Image.network(PurchasedList[index].Photo[0]),),
                    Text(PurchasedList[index].Name),
                    SizedBox(width: 20,),
                    Text("Цена: " + PurchasedList[index].Price.toString()),
                  Text(" Количество: " + PurchasedList[index].Count.toString()),
                ]),
              );
            }),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
