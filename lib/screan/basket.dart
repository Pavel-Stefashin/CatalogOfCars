import 'package:flutter/material.dart';
import '../items/basket_button_st_full.dart';
import '../items/basket_list.dart';
import '../items/bottom_bar.dart';
import 'cars_card.dart';

class BascketScr extends StatelessWidget {

  BascketScr();

  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(title: Text('Корзина', style: TextStyle(fontSize: 40,),),),
      body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 1 / 1,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5),
            itemCount: BascketList.length,
            itemBuilder: (BuildContext context, int index) {
              return Expanded(
                  child: Column(children: <Widget>[
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CarsCard(BascketList[index].Id)));
                        },
                        child: Image.network(BascketList[index].Photo[0])),
                    Text(
                      BascketList[index].Name,
                      style: TextStyle(fontSize: 10, color: Colors.black),
                      softWrap: true,
                    ),
                    Text(
                      "Цена: " + BascketList[index].Price as String,
                      style: TextStyle(fontSize: 10, color: Colors.black),
                      softWrap: true,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 80,
                        child: Row(
                          children: [
                            BasketButton(BascketList[index].Id, true, "Удалить из корзины"),
                          ],
                        ),
                      ),
                    ),
                  ]));
            },
          )),
      bottomNavigationBar:
      BottomBar(),
    );
  }
}
