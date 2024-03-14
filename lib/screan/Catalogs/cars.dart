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
        [
          "https://static.lada.ru/images/v6/cars/configurator/granta/sedan.webp"
        ],
        "",
        "от 699 900 ",
        "	1.6 MT Classic 5 мест",
        "Универсал",
        "МКПП 5",
        "160",
        "5",
        "1596",
        ""),
    Car(
        "NIVA TRAVEL",
        [
          "https://static.lada.ru/images/v6/cars/configurator/niva-travel/travel.webp"
        ],
        "",
        "от 1 198 900 ",
        "	1.6 MT Classic 5 мест",
        "Универсал",
        "МКПП 5",
        "160",
        "5",
        "1596",
        ""),
    Car(
        "VESTA СЕДАН",
        [
          "https://static.lada.ru/images/v6/cars/configurator/vesta_new/sedan.webp"
        ],
        "Текст",
        "от 1 239 900 ",
        "	1.6 MT Classic 5 мест",
        "Универсал",
        "МКПП 5",
        "160",
        "5",
        "1596",
        ""),
    Car(
        "NIVA LEGEND 3 ДВ.",
        [
          "https://static.lada.ru/images/v6/cars/configurator/niva-legend/3dv.webp",
          "https://s2.auto.drom.ru/photo/WuRH3ZWcjbA2wTOB7EvOGG8p_xUA8ShbOtifgMbTaWthWWDMDFQEGf6fOYB9HaU_od6r4_UuB8KpF9If5Ro3OclTpRAecEoD.jpg",
          "https://s2.auto.drom.ru/photo/kjrdYIs_qF6Je7NR1h9r48EzkbZQfIpKsR4Q-w8obiPDqTPSO3CEXY-yCCsvwc2eczIH4YQFoIhHfbv1upo9NasuqFgmSIGN.jpg",
          "https://s2.auto.drom.ru/photo/nzPkJXzRluhZ56osZ1E6lFO3lWPIBkSJkD3QcweZplHuTUxZv3Rr701DMg7g-5JZZ30gQK2BZvhzwoGj41S8L29AKk1XSGAz.jpg",
          "https://s2.auto.drom.ru/photo/XSz2GnjuEbgI9v5Y9kIiU4kYnku4QcALAFk1nKF6aKV9JRmCA4yN1Ad_QnO4pbUruaIVA8GVntd_B4LYz5NbhZVkg4eGBMmY.jpg",
          "https://s2.auto.drom.ru/photo/IC8X0Bs8MYyA0Bj7FqECH6fLC277e4vbYQqqg7Ad3LDG3qMly7yZabAiVO8jcomhjA00AZJ9xRTgX7rwk-bGitX5s9YCy4gF.jpg",
          "https://s2.auto.drom.ru/photo/RCW0QFTCHZGScc_ixqQhY_6b5Zrx8PLuorfqVDGuuq--IJZIQ1vwsLTnbMh9Z1hobELUyVXkvAX1pagfHEou3IsI6rtArWVz.jpg",
          "https://s2.auto.drom.ru/photo/hPjt643q2yjRiKFg5iNndD1_hbslisS2kr2lmc5UqZI3b7MSJ0CXIYwjWmuxzLPl13gc0mm6m93k68KPyuHeHlRtWvS1rnP9.jpg"
        ],
        "LADA Niva Legend — автомобиль со всемирно известным дизайном, в котором продумана каждая деталь. Короткие свесы улучшают проходимость на пересечённой местности и позволяют безопасно парковаться вплотную к бордюрам. Компактный кузов — это удачное решение и для города, и для леса. А скругленные линии капота, дверей и колесных арок — классическое решение, актуальное всегда и везде.",
        "от 829 900 ",
        "1.7 MT Urban",
        "SUV",
        "МКПП 5",
        "142",
        "4",
        "1690",
        ""),
    Car(
        "VESTA SPORTLINE",
        [
          "https://static.lada.ru/images/v6/cars/configurator/granta/drive-active.webp",
          "https://s2.auto.drom.ru/photo/NkYsD_tiH7NVgkcxJmlHHw2YPxb7AYYFejETi1aJLYyHj_w7ysouZfjpr-xo6Hvw_TP9Z9yTfuxrM1t5Wcg571xeLbDZY_EQ.jpg",
          "https://s2.auto.drom.ru/photo/VZ6Aot2OdlpENxrnGbzaLaVYZOVYAoG9RIgqTUq_AmtpeBbK-UUur91sYlPO5k_FUAeQXc73vKOOvhBiVG4kuor83YFDaVha.jpg",
          "https://s2.auto.drom.ru/photo/SXPXoqejmRsWHvw3prvZRZsm83jcVe4uyG0NTujIr7EZy71WZvYFOCCy0qR3GXdc4JOk5aQwSADTgIZ8iUqnjttWqj5KS_Pn.jpg",
          "https://s2.auto.drom.ru/photo/ogQgSTaYM3tKzNBHm_GGC3sy6fXWjZMLBjo8eoacYiMod0jIWYxzYSznvoaH5SVk5-k_B_dEbLH1GxHEr8pzj_pSEqhCNCYI.jpg",
          "https://s2.auto.drom.ru/photo/Bk68nLGvmZ3YgYpvzltwRZX--3gH3r_JStPMtDZ14YrFz-_4bo7RzaYEac2lltZBR663q0ZERqxnmnhIP9O7ZSadY9WQxMgR.jpg",
          "https://s2.auto.drom.ru/photo/vz1A_jh2UE5kLKdpo4sEGgaUXmDNhOoJwZKkIP1Xh8-Wt7moltPx8w7BQJ7l6-17Fic9FWHpbL36cw2Rx7WK7dsEaBSOnbh1.jpg"
        ],
        "Каждый маршрут становится гоночной трассой. Каждый водитель может быть самым быстрым. Силуэт — занижен, колея — расширена. Автомобиль со спортивным характером выделяется в потоке. Его слышно: выпуск настроен на свободное дыхание мотора. Под скорость создан и кузов: испытан в аэротрубе и оснащен тщательно проработанным обвесом.",
        "от 2 175 900 ",
        "	1.6 MT 2WD Sportline",
        "Седан",
        "МКПП 5",
        "190",
        "5",
        "1596",
        ""),
    Car(
        "LARGUS CROSS",
        [
          "https://static.lada.ru/images/v6/cars/configurator/new-largus/universal.webp",
          "https://s2.auto.drom.ru/photo/TaWBqdNfymwauRuEQJb-Ajb74CcaXp3issR7-eWzffDjhxfrHYCDBpGDG2VibVClcLysj0GWvOpUnEnBLnikF9ySfdDzTPcT.jpg",
          "https://s2.auto.drom.ru/photo/oVttje48ke4bf2BfEX8gPd15IynmiXIvOlrf2T3-ORm9erkO5wwE_Rre4Rsb23iEWPq_ov-WQtORZBQgaoFA43084IdqE-vT.jpg",
          "https://s2.auto.drom.ru/photo/SPHYvQYcxN6xSubRbCefWNVqaOiqtWJ3uMa3FbwVnsA76nU83cjm86wWoQX501CrdLut1eNtuai0R4kMYKl92S51WDQ3Gheq.jpg",
          "https://s2.auto.drom.ru/photo/eTZLfOsgFj70Qkc5402YCLbz45cPu-_xzkRbSSWR8MY_0pWJGOrLxx75Hp67h0XomyN7QhG7FhGMkqgDm-2Twoe_3gL1OqyY.jpg",
          "https://s2.auto.drom.ru/photo/O4Sr0B_efKgdIyhseDAy_i7gPEZ0kVFjk21g20NxxkixeiSKB4z_ah4KROg-bHjKhFvSvY8asJhP3IERVdXJL8rPmj6QpEsU.jpg"
        ],
        "LADA Largus Cross взял все самое лучшее сразу от трех типов автомобиля: универсала, микроавтобуса и кроссовера. Вместительный салон, отличное оснащение, удобная высокая посадка — то, что нужно для семейных путешествий. Широкий спектр возможностей автомобиля выражен и в оригинальном стиле, который сочетает мощь и динамику. LADA Largus Cross оснащается 16-клапанным двигателем, адаптированным для работы на бензине АИ-92. Это современный, надежный и экономичный мотор, который обеспечивает хорошую динамику и комфорт движения. Опрятный и ухоженный автомобиль, в котором всегда уверен и которым приятно пользоваться. Для того, чтобы ваша LADA была именно такой, мы уже включили в состав аксессуары: ",
        "от 2 175 900 ",
        "	1.6 MT Classic 5 мест",
        "Универсал",
        "МКПП 5",
        "160",
        "5",
        "1596",
        ""),
    Car(
        "GRANTA ФУРГОН",
        [
          "https://static.lada.ru/images/v6/cars/configurator/commercial/granta_lcv_furgon.webp",
          "https://s.auto.drom.ru/i24284/c/photos/fullsize/lada/granta/lada_granta_1153308.jpg",
          "https://s.auto.drom.ru/i24284/c/photos/fullsize/lada/granta/lada_granta_1153307.jpg",
          "https://s.auto.drom.ru/i24284/c/photos/fullsize/lada/granta/lada_granta_1153310.jpg",
          "https://s.auto.drom.ru/i24284/c/photos/fullsize/lada/granta/lada_granta_1153309.jpg",
          "https://s.auto.drom.ru/i24284/c/photos/fullsize/lada/granta/lada_granta_1153324.jpg"
        ],
        "LADA Granta с бортовой платформой – надежный коммерческий автомобиль с полурамной конструкцией кузова и задней рессорной подвеской. В зависимости от задач бизнеса, можно выбрать стандартную либо удлинённую версию. Дополнительную защиту груза можно обеспечить, заказав версию со стеклопластиковым кунгом.",
        "от 1 267 000 ",
        "	1.6 MT Classic фургон",
        "Коммерческий фургон",
        "МКПП 5",
        "158",
        "2",
        "1596",
        ""),
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
                Cars[index].EngineDisplacement,
                Cars[index].Url,
              ),
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
  List<String> Photo;
  String Description;
  String Price;
  String PackageName;
  String BodyType;
  String TransmissionType;
  String MaxSpeed;
  String NumberOfSeats;
  String EngineDisplacement;
  String Url;

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
      this.EngineDisplacement,
      this.Url);

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
                      //color: Colors.pink,
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: CarouselSlider.builder(
                        itemCount: Photo.length,
                        itemBuilder: (BuildContext context, int index,
                                int pageViewIndex) =>
                            Container(child: Image.network(Photo[index])),
                        options: CarouselOptions(
                          height: MediaQuery.of(context).size.height * 0.8,
                        ),
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    //color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Text(
                      "Цена: " + this.Price,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24),
                    //color: Colors.pink,
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
                    //color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: ListView(children: [
                      Expanded(
                        child: Text(
                          this.Description,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    //color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView(
                            children: [
                              Table(
                                children: [
                                  TableRow(children: [
                                    Text(
                                      "Название комплектации: ",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(this.PackageName,
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
                                    Text(this.BodyType,
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                  ]),
                                  TableRow(children: [
                                    Text("Тип трансмиссии ",
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                    Text(this.TransmissionType,
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                  ]),
                                  TableRow(children: [
                                    Text("Максимальная скорость, км/ч: ",
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                    Text(this.MaxSpeed,
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                  ]),
                                  TableRow(children: [
                                    Text("Число мест: ",
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                    Text(this.NumberOfSeats,
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                  ]),
                                  TableRow(children: [
                                    Text("Объем двигателя: ",
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                    Text(this.EngineDisplacement,
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                  ]),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    //color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.3,
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
