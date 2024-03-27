import 'package:flutter/material.dart';
import '../items/basket_button_st_full.dart';
import '../items/basket_list.dart';
import '../items/bottom_bar.dart';
import '../items/purchased_button.dart';
import 'car_card.dart';

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
                      "Цена: от " + BascketList[index].Price.toString(),
                      style: TextStyle(fontSize: 10, color: Colors.black),
                      softWrap: true,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Expanded(
                        child: Row(
                          children: [
              Expanded( child: PurchasedButton(BascketList[index].Id,1), flex: 3),
              Expanded( child: BasketButton(BascketList[index].Id, true, "Удалить из корзины"), flex: 1),
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
