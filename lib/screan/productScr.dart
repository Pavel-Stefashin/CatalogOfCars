import 'package:flutter/material.dart';

class ProdactCard extends StatelessWidget {

    String Name;
    String Photo;
    String Description;
    String Price;
  ProdactCard(this.Name, this.Photo, this.Description, this.Price);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(
        child: Text(this.Name,
        style: TextStyle(fontSize: 40,))
        )
        ),
      body: Center(child:
            Container(
        width: MediaQuery.of(context).size.width * 0.6,
        height: MediaQuery.of(context).size.height * 0.8,
        child: ListView(
            padding: const EdgeInsets.all(8),
            children:[
        Column(children: [
          Image.network(Photo),
          Text("Описание",
          style: TextStyle(fontSize: 20)),
          Text(Description),
          Text("Цена",
              style: TextStyle(fontSize: 20)),
          Text(Price as String),
        ],),
      ])
    ),
      )
    );
  }
}


class CarsCard extends StatelessWidget {

  String Name;
  String Photo;
  String Description;
  String Price;
  CarsCard(this.Name, this.Photo, this.Description, this.Price);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(title: Center(
          child: Text(this.Name,
              style: TextStyle(fontSize: 40,))
      )
    ),
    body: Center(child: Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.9,
        child: ListView(children: [
          Container(
            color: Colors.pink,
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          Container(margin: EdgeInsets.only(top: 8),
            color: Colors.pink,
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.25,
            child: Column(
              children: [
                ListView(children: [
                  Text(this.Description),
                ],),
                Text(this.Price),
              ],
            ),
          ),
        ],),
        )
      ],
      ),
    ),
  );
  }
}