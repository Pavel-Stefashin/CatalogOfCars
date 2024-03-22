import 'package:flutter/material.dart';
import '../../items/cars_list.dart';
import '../cars_card.dart';
import '../../screan//favorite.dart';

class scrCars extends StatelessWidget {
  scrCars({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
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
                      IconButton(
                        icon: Icon(Icons.shopping_basket_outlined),
                        iconSize: 15.0,
                        color: Colors.blue,
                        onPressed: () {
                          // Делаем что-то при нажатии кнопки.
                        },
                        tooltip: 'Add to favorites',
                        splashColor: Colors.blueAccent,
                      ),
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        iconSize: 15.0,
                        color: Colors.red,
                        onPressed: () {

                        },
                        tooltip: 'Add to favorites',
                        splashColor: Colors.redAccent,
                      ),
                    ],
                  ),
                ),
              ),
            ]));
          },
        ));
  }
}
