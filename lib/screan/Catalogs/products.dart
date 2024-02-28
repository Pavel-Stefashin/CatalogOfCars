import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:laba2/items/objects.dart';
import 'package:laba2/screan/Catalogs/products.dart';

class Catalog extends StatelessWidget {
  Catalog({super.key});

  List<Product> Products = <Product>[
    Product("Набор шоколада",
      "https://avatars.mds.yandex.net/i?id=f8ed23f6c7914d360f8ab145a472671cdb69eef6-5339753-images-thumbs&n=13",
      "Набор швейцарского шоколада 300г", "200"),
    // Product("Леденцы",
    //     "https://avatars.mds.yandex.net/i?id=3b620a5b22048af7d49f94bd15d841d6d00968a0-11944133-images-thumbs&n=13",
    //     "Набор леденцов для настоящих сладкоежек", 200),
    // Product("Twix Minis",
    //     "https://ir.ozone.ru/multimedia/wc1000/1023564323.jpg",
    //     "Конфеты шоколадные батончики Twix Minis, 1 кг / Печенье, шоколад, карамель", 200),
    // Product("Yadro",
    //     "https://ir.ozone.ru/s3/multimedia-k/wc1000/6696779168.jpg",
    //     "Конфеты из ядер конопли (Класические)", 200),
    // Product("Yadro",
    //     "https://ir.ozone.ru/s3/multimedia-j/wc1000/6605174539.jpg",
    //     "Конфеты из ядер конопли (Шоколад с топинамбуром)", 200),
    // Product("Yadro",
    //     "https://ir.ozone.ru/s3/multimedia-k/wc1000/6696772940.jpg",
    //     "Конфеты из ядер конопли (Клубника)", 200),
    // Product("Yadro",
    //     "https://ir.ozone.ru/s3/multimedia-l/wc1000/6696779169.jpg",
    //     "Конфеты из ядер конопли (Кокос с топинамбуром)", 200),
    // Product("Skittles",
    //     "https://ir.ozone.ru/s3/multimedia-7/wc1000/6321243127.jpg",
    //     "Конфеты драже Skittles Фрукты, в разноцветной глазури", 200),
    // Product("Bounty",
    //     "https://ir.ozone.ru/s3/multimedia-d/wc1000/6694688989.jpg",
    //     "Конфеты шоколадные батончики Bounty Minis", 200),
    // Product("Грильяж",
    //     "https://ir.ozone.ru/s3/multimedia-z/wc1000/6893789687.jpg",
    //     "Коммунарка Конфеты Грильяж в шоколаде с фундуком", 200),
    // Product("REEEL",
    //     "https://ir.ozone.ru/s3/multimedia-u/wc1000/6839680926.jpg",
    //     "Конфеты без сахара фруктовые REEEL: Манго, Яблоко, Финик,", 200),
    // Product("Карамельные тросточки",
    //     "https://ir.ozone.ru/s3/multimedia-1-o/wc1000/6916512216.jpg",
    //     "Сладкая Сказка Карамельные тросточки, 8 шт по 15 г", 200),
    // Product("Птичье молоко",
    //     "https://ir.ozone.ru/s3/multimedia-1-2/wc1000/6916911398.jpg",
    //     "Конфеты суфле Рот-Фронт Птичье молоко, со сливочно-ванильным вкусом, 225 г", 200),
    // Product("M&M's",
    //     "https://ir.ozone.ru/s3/multimedia-j/wc1000/6263145187.jpg",
    //     "Конфеты шоколадные M&M's драже, 360 г / Молочный шоколад", 200),
    // Product("Mentos",
    //     "https://ir.ozone.ru/s3/multimedia-r/wc1000/6701323335.jpg",
    //     "Жевательные драже Mentos Фреш Кола, 95 г", 200),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(
            child: Text('Catalog',
                style: TextStyle(fontSize: 40)
            )
        )
        ),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.6,
            color: Color.fromARGB(255, 233, 219, 253),
            child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: Products.length,
            itemBuilder: (BuildContext context, int index){
              return Container(
                child: Column(children: <Widget>[
                  ProductButton(Products[index].Name, Products[index].Photo, Products[index].Description),
                  Text(Products[index].Name),
                ])
              );
              },
          /*Container(
            height: 300,
            width: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(),]
            ),
          ),*/
        ),
        ),
        ),
    );
  }
}