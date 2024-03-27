import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:laba2/items/purchased_button.dart';
import '../../items/cars_list.dart';
import '../items/basket_button_st_full.dart';
import '../items/bottom_bar.dart';
import '../items/favorite_button_st_full.dart';
import '../items/you_tube.dart';

class CarsCard extends StatelessWidget {
  int Id;

  CarsCard(this.Id);

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text(Cars[Id].Name,
                  style: TextStyle(
                    fontSize: 40,
                  )))),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.9,
                child: ListView(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: CarouselSlider.builder(
                          itemCount: Cars[Id].Photo.length,
                          itemBuilder: (BuildContext context, int index,
                                  int pageViewIndex) =>
                              Container(
                                  child: Image.network(Cars[Id].Photo[index])),
                          options: CarouselOptions(
                            height: MediaQuery.of(context).size.height * 0.8,
                          ),
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: Text(
                        "Цена: от " + Cars[Id].Price.toString(),
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: Row(children: [
                        Expanded(child: PurchasedButton(Cars[Id].Id, 1), flex: 4),
                        Expanded(
                          child: BasketButton(Cars[Id].Id, false, "Добавить в корзину"),
                          flex: 1,
                        ),
                        Expanded(
                          child: FavoriteButton(Cars[Id].Id, "Добавить в избранное"),
                          flex: 1,
                        ),
                      ]), //),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24),
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: Text(
                        "Описание: ",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8, bottom: 16),
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: ListView(children: [
                        Expanded(
                          child: Text(
                            Cars[Id].Description,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ]),
                    ),
                    Expanded(
                      child: Table(
                        children: [
                          TableRow(children: [
                            Text(
                              "Название комплектации: ",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(Cars[Id].PackageName,
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          ]),
                          TableRow(children: [
                            Text(
                              "Тип кузова: ",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(Cars[Id].BodyType,
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          ]),
                          TableRow(children: [
                            Text("Тип трансмиссии ",
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                            Text(Cars[Id].TransmissionType,
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          ]),
                          TableRow(children: [
                            Text("Максимальная скорость, км/ч: ",
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                            Text(Cars[Id].MaxSpeed,
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          ]),
                          TableRow(children: [
                            Text("Число мест: ",
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                            Text(Cars[Id].NumberOfSeats,
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          ]),
                          TableRow(children: [
                            Text("Объем двигателя: ",
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                            Text(Cars[Id].EngineDisplacement,
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          ]),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8, bottom: 20),
                      child: Video(VideoLink: Cars[Id].Url),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
