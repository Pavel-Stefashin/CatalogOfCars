import 'package:flutter/material.dart';
import 'package:laba2/items/basket_list.dart';
import 'package:laba2/items/favorite_list.dart';
import 'package:laba2/items/purchased_button.dart';
import '../../items/basket_button_st_full.dart';
import '../../items/bottom_bar.dart';
import '../../items/cars_list.dart';
import '../../items/favorite_button_st_full.dart';
import '../cars_card.dart';
import '../favorite.dart';
import '../purchase.dart';
import '../../items/purchased_list.dart';

class scrCars extends StatelessWidget {
  scrCars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(
          child: Text('Каталог',
              style: TextStyle(fontSize: 40),
          )
      )
      ),
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
                  "Цена: от " + Cars[index].Price.toString(),
                  style: TextStyle(fontSize: 10, color: Colors.black),
                  softWrap: true,
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: PurchasedButton(index, 1),
                        flex: 3,
                      ),
                      Expanded(
                        child: BasketButton(index, false, "Добавить в корзину"),
                        flex: 1,
                      ),
                      Expanded(
                        child: FavoriteButton(index, "Добавить в избранное"),
                        flex: 1,
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
