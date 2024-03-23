import 'package:flutter/material.dart';
import 'package:laba2/items/basket_list.dart';
import 'package:laba2/items/favorite_list.dart';
import '../../items/basket_button_st_full.dart';
import '../../items/bottom_bar.dart';
import '../../items/cars_list.dart';
import '../../items/favorite_button_st_full.dart';
import '../cars_card.dart';
import '../favorite.dart';

class scrCars extends StatelessWidget {
  scrCars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 1 / 1,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5),
            itemCount: Cars.length,
            itemBuilder: (BuildContext context, int index) {
              return Expanded(
                  child: Column(children: <Widget>[
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CarsCard(index)));
                    },
                    child: Image.network(Cars[index].Photo[0])),
                Text(
                  Cars[index].Name,
                  style: TextStyle(fontSize: 10, color: Colors.black),
                  softWrap: true,
                ),
                Text(
                  "Цена: " + Cars[index].Price as String,
                  style: TextStyle(fontSize: 10, color: Colors.black),
                  softWrap: true,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 80,
                    child: Row(
                      children: [
                        BasketButton(index,false, "Добавить в корзину"),
                        FavoriteButton(index, "Добавить в избранное"),
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
