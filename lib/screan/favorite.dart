import 'package:flutter/material.dart';
import 'package:laba2/items/favorite_list.dart';
import '../items/basket_list.dart';
import '../items/bottom_bar.dart';
import '../items/cars_list.dart';
import '../items/favorite_button_st_full.dart';
import 'cars_card.dart';

class FavoriteScr extends StatelessWidget {

  FavoriteScr();

  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(title: Text('Избранное', style: TextStyle(fontSize: 40,),),),
      body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 1 / 1,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5),
            itemCount: FavoriteList.length,
            itemBuilder: (BuildContext context, int index) {
              return Expanded(
                  child: Column(children: <Widget>[
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CarsCard(FavoriteList[index].Id)));
                        },
                        child: Image.network(FavoriteList[index].Photo[0])),
                    Text(
                      FavoriteList[index].Name,
                      style: TextStyle(fontSize: 10, color: Colors.black),
                      softWrap: true,
                    ),
                    Text(
                      "Цена: от " + FavoriteList[index].Price.toString(),
                      style: TextStyle(fontSize: 10, color: Colors.black),
                      softWrap: true,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 80,
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.shopping_basket_outlined),
                              iconSize: 15.0,
                              color: Colors.blue,
                              onPressed: () {
                                BascketList.add(FavoriteList[index]);
                              },
                              tooltip: 'Добавить в карзину',
                              splashColor: Colors.blueAccent,
                            ),
                            FavoriteButton(FavoriteList[index].Id, "Удалить из избранного"),
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
