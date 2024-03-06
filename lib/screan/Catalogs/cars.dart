import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../items/objects.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:card_swiper/card_swiper.dart';

class scrCars extends StatelessWidget {
  scrCars({Key? key}) : super(key: key);

  List<Car> Cars = <Car>[
    Car(
        "ЛАДА GRANTA СЕДАН",
        "https://static.lada.ru/images/v6/cars/configurator/granta/sedan.webp",
        "",
        "от 699 900 ",
        "	1.6 MT Classic 5 мест",
        "Универсал",
        "МКПП 5",
        "160",
        "5",
        "1596"),
    Car(
        "NIVA TRAVEL",
        "https://static.lada.ru/images/v6/cars/configurator/niva-travel/travel.webp",
        "",
        "от 1 198 900 ",
        "	1.6 MT Classic 5 мест",
        "Универсал",
        "МКПП 5",
        "160",
        "5",
        "1596"),
    Car(
        "VESTA СЕДАН",
        "https://static.lada.ru/images/v6/cars/configurator/vesta_new/sedan.webp",
        "Текст",
        "от 1 239 900 ",
        "	1.6 MT Classic 5 мест",
        "Универсал",
        "МКПП 5",
        "160",
        "5",
        "1596"),
    Car(
        "NIVA LEGEND 3 ДВ.",
        "https://static.lada.ru/images/v6/cars/configurator/niva-legend/3dv.webp",
        "",
        "от 829 900 ",
        "	1.6 MT Classic 5 мест",
        "Универсал",
        "МКПП 5",
        "160",
        "5",
        "1596"),
    Car(
        "VESTA SPORTLINE",
        "https://static.lada.ru/images/v6/cars/configurator/granta/drive-active.webp",
        "",
        "от 2 175 900 ",
        "	1.6 MT Classic 5 мест",
        "Универсал",
        "МКПП 5",
        "160",
        "5",
        "1596"),
    Car(
        "LARGUS CROSS",
        "https://static.lada.ru/images/v6/cars/configurator/new-largus/universal.webp",
        "LADA Largus Cross взял все самое лучшее сразу от трех типов автомобиля: универсала, микроавтобуса и кроссовера. Вместительный салон, отличное оснащение, удобная высокая посадка — то, что нужно для семейных путешествий. Широкий спектр возможностей автомобиля выражен и в оригинальном стиле, который сочетает мощь и динамику. LADA Largus Cross оснащается 16-клапанным двигателем, адаптированным для работы на бензине АИ-92. Это современный, надежный и экономичный мотор, который обеспечивает хорошую динамику и комфорт движения. Опрятный и ухоженный автомобиль, в котором всегда уверен и которым приятно пользоваться. Для того, чтобы ваша LADA была именно такой, мы уже включили в состав аксессуары: ",
        "от 2 175 900 ",
        "	1.6 MT Classic 5 мест",
        "Универсал",
        "МКПП 5",
        "160",
        "5",
        "1596"),
    Car(
        "GRANTA ФУРГОН",
        "https://static.lada.ru/images/v6/cars/configurator/commercial/granta_lcv_furgon.webp",
        "",
        "от 1 267 000 ",
        "	1.6 MT Classic 5 мест",
        "Универсал",
        "МКПП 5",
        "160",
        "5",
        "1596"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.8,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 8),
          itemCount: Cars.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                child: Column(children: <Widget>[
              CarsButton(
                  Cars[index].Name,
                  Cars[index].Photo,
                  Cars[index].Description,
                  Cars[index].Price,
                  Cars[index].PackageName,
                  Cars[index].BodyType,
                  Cars[index].TransmissionType,
                  Cars[index].MaxSpeed,
                  Cars[index].NumberOfSeats,
                  Cars[index].EngineDisplacement),
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
            ]));
          },
        ));
  }
}

class CarsCard extends StatelessWidget {
  String Name;
  String Photo;
  String Description;
  String Price;
  String PackageName;
  String BodyType;
  String TransmissionType;
  String MaxSpeed;
  String NumberOfSeats;
  String EngineDisplacement;
  CarsCard(
      this.Name,
      this.Photo,
      this.Description,
      this.Price,
      this.PackageName,
      this.BodyType,
      this.TransmissionType,
      this.MaxSpeed,
      this.NumberOfSeats,
      this.EngineDisplacement);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text(this.Name,
                  style: TextStyle(
                    fontSize: 40,
                  )))),
      body: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.9,
              child: ListView(
                children: [
                  Container(
                    color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: CarouselSlider.builder(
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int index, int pageViewIndex) =>
                    Container(child: Image.network(Photo)),
                      options: CarouselOptions(height: MediaQuery.of(context).size.height * 0.8,),
                    )
              ),
              Container(
              margin: EdgeInsets.only(top: 8),
              color: Colors.pink,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
              children: [
              Expanded(
              child: ListView(
              children: [
              Text(
              this.Description,
                style: TextStyle(
                    fontSize: 10,
                    overflow: TextOverflow.ellipsis),
                softWrap: true,
              ),
              ]
                            ),
                            flex: 4),
                        Expanded(
                            child: Text(
                              "Цена: " + this.Price,
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            flex: 1),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Column(
                      children: [
                        Expanded(
                            flex: 1,
                            child: ListView(
                              children: [
                                Row(children: [
                                  Column(children: [
                                    Text(
                                      "Название комплектации: ",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      "Тип кузова: ",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text("Тип трансмиссии ",
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                    Text("Максимальная скорость, км/ч: ",
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                    Text("Число мест: ",
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                    Text("Объем двигателя: ",
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                  ]),
                                  Column(children: [
                                    Text(this.PackageName,
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                    Text(this.BodyType,
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                    Text(this.TransmissionType,
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                    Text(this.MaxSpeed,
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                    Text(this.NumberOfSeats,
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                    Text(this.EngineDisplacement,
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                  ]),
                                ]),
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
