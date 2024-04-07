import 'package:flutter/material.dart';
import 'package:laba2/items/cars_list.dart';
import '../items/basket_button_st_full.dart';
import '../items/basket_list.dart';
import '../items/bottom_bar.dart';
import '../items/purchased_button.dart';
import 'car_card.dart';

class BascketScr extends StatefulWidget {
  const BascketScr();

  @override
  State<BascketScr> createState() => BascketScrState();
}

class BascketScrState extends State<BascketScr> {
   int finaly = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Корзина',
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
      body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: ListView.builder(
            /*gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 1 / 1,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5),*/
            itemCount: BascketList.length,
            itemBuilder: (BuildContext context, int index) {
              return Expanded(
                  child: Row(children: <Widget>[
                    Expanded(
                      //картинка плашки
                      flex: 2,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CarsCard(BascketList[index].Id)));
                          },
                          child: Image.network(BascketList[index].Photo[0])),
                    ),
                    Expanded(
                      //текст плашки
                      flex: 1,
                      child: Column(
                        children: [
                          Text(
                            BascketList[index].Name,
                            style: TextStyle(fontSize: 16, color: Colors.black),
                            softWrap: true,
                          ),
                          Text(
                            "Цена: от " + BascketList[index].Price.toString(),
                            style: TextStyle(fontSize: 13, color: Colors.black),
                            softWrap: true,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Expanded(
                                child: Column(
                                  children: [
                                    //row([ + (1) - ]),
                                    Row(
                                      children: [
                                        TextButton(
                                            onPressed: () {
                                              if(BascketList[index].Count > 0){
                                                setState(() {
                                                  BascketList[index].Count = BascketList[index].Count - 1;
                                                });
                                              }
                                            }, child: Text("-")),
                                        Text(BascketList[index].Count.toString()),
                                        TextButton(
                                            onPressed: () {
                                              setState(() {
                                                BascketList[index].Count = BascketList[index].Count + 1;
                                              });
                                            }, child: Text("+")),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                            child: PurchasedButton(
                                                BascketList[index].Id, 1),
                                            flex: 3),
                                        Expanded(
                                            child: BasketButton(BascketList[index].Id,
                                                true, "Удалить из корзины"),
                                            flex: 1),
                                      ],
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  ]));
            },
          )),
      bottomSheet: Text("ИТОГО: " + finaly.toString()),
      bottomNavigationBar: BottomBar(),
    );
  }
}

/*

class __BascketScr extends StatelessWidget {
  __BascketScr();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Корзина',
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
      body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: ListView.builder(
            */
/*gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 1 / 1,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5),*//*

            itemCount: BascketList.length,
            itemBuilder: (BuildContext context, int index) {
              return Expanded(
                  child: Row(children: <Widget>[
                Expanded(
                  //картинка плашки
                  flex: 2,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CarsCard(BascketList[index].Id)));
                      },
                      child: Image.network(BascketList[index].Photo[0])),
                ),
                Expanded(
                  //текст плашки
                  flex: 1,
                  child: Column(
                    children: [
                      Text(
                        BascketList[index].Name,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        softWrap: true,
                      ),
                      Text(
                        "Цена: от " + BascketList[index].Price.toString(),
                        style: TextStyle(fontSize: 13, color: Colors.black),
                        softWrap: true,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Expanded(
                            child: Column(
                          children: [
                            //row([ + (1) - ]),
                            Row(
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        BascketList[index].Count = BascketList[index].Count - 1;
                                      }, child: Text("-")),
                                  Text(BascketList[index].Count.toString()),
                                  TextButton(
                                      onPressed: () {
                                        BascketList[index].Count = BascketList[index].Count + 1;
                                      }, child: Text("+")),
                                ],
                              ),
                            Row(
                              children: [
                                Expanded(
                                    child: PurchasedButton(
                                        BascketList[index].Id, 1),
                                    flex: 3),
                                Expanded(
                                    child: BasketButton(BascketList[index].Id,
                                        true, "Удалить из корзины"),
                                    flex: 1),
                              ],
                            ),
                          ],
                        )),
                      ),
                    ],
                  ),
                ),
              ]));
            },
          )),
      bottomNavigationBar: BottomBar(),
    );
  }
}
*/
