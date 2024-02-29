import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../items/objects.dart';

class scrCars extends StatelessWidget {
  scrCars({Key? key}) : super(key: key);

  List<Product> Products = <Product>[
    Product("ЛАДА GRANTA СЕДАН",
        "https://static.lada.ru/images/v6/cars/configurator/granta/sedan.webp",
        "", "от 699 900 ₽"),
    Product("NIVA TRAVEL",
        "https://static.lada.ru/images/v6/cars/configurator/niva-travel/travel.webp",
        "", "от 1 198 900 ₽"),
    Product("VESTA СЕДАН",
        "https://static.lada.ru/images/v6/cars/configurator/vesta_new/sedan.webp",
        "", "от 1 239 900 ₽"),
    Product("NIVA LEGEND 3 ДВ.",
        "https://static.lada.ru/images/v6/cars/configurator/niva-legend/3dv.webp",
        "", "от 829 900 ₽"),
    Product("VESTA SPORTLINE",
        "https://static.lada.ru/images/v6/cars/configurator/granta/drive-active.webp",
        "", "от 2 175 900 ₽"),
    Product("LARGUS CROSS",
        "https://static.lada.ru/images/v6/cars/configurator/new-largus/universal.webp",
        "", "от 2 175 900 ₽"),
    Product("GRANTA ФУРГОН",
        "https://static.lada.ru/images/v6/cars/configurator/commercial/granta_lcv_furgon.webp",
        "", "от 1 267 000 ₽"),

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.8,
        child: GridView.builder(
          gridDelegate:  const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 500,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          padding: const EdgeInsets.all(20),
          itemCount: Products.length,
          itemBuilder: (BuildContext context, int index){
            return Container(
                child: Column(children: <Widget>[
                  CarsButton(Products[index].Name, Products[index].Photo, Products[index].Description, Products[index].Price),
                  Text(Products[index].Name, style: TextStyle(fontSize: 30, color: Colors.black),),
                  Text("Цена: " + Products[index].Price as String, style: TextStyle(fontSize: 20, color: Colors.black),),
                ])
            );
          },
    )
    );
  }
}
