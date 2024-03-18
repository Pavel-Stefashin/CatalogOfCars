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
          "https://static.lada.ru/images/v6/cars/configurator/granta/sedan.webp",
          "https://s2.auto.drom.ru/photo/nV28omHu-NLWf7AkGMwPPMOJoz8fogn7pj8lpoJmS1l3qNH5F5Vjf8OydM1LxN6UsklXK9eLFqx9v3coueBlj-FETAf8lSF0.jpg",
          "https://s2.auto.drom.ru/photo/6O_PsvBKMIDHC42jgeZCuXiSRYfd8cDdLr_LFVqJJMetM_j-w75NwPekrwI-nOjVYhTiks1VCQywwmQWKb-39qHAI-l9e26S.jpg",
          "https://s2.auto.drom.ru/photo/QCNtNmaMrRplUMq6b6eovgu2Asd_EY3tNBGqCk82Tl_psovpP04ceFStn3m1sgLFdGjeEIOCoKXHdfEQb-gwLbqPPDY1lHHl.jpg",
          "https://s2.auto.drom.ru/photo/5X0BjSv-FuVTlS_yuMnBtRLz_CgA3yYkQJaKcsyO0M7LEcpUP9_lM-RtJUor-cF9B7YHALk2n3wiKIB21pFTtGp0nvCmVsaS.jpg",
          "https://s2.auto.drom.ru/photo/jCMWMCEN9lf3VgkdYMYWGbFaxNmMTQsrgop-SfypwCBJ-0wc6k9Jdcksq8V84uzfe1BI3DXZKR8ng0jScJ07-HdgP2M1sZCC.jpg",
          "https://s2.auto.drom.ru/photo/SI2tre_1-G5GCrDta-h-AywOWQxo92hnuiTX39NdembqqWwiIsi0K32lmRaSY5TlsHQH89WUmyApdY3SlnrdDHrSQ0NIfn7M.jpg",
          "https://s2.auto.drom.ru/photo/D6aojNv5drUA7Uc8V-2IneW8rBlkZNDe7yycMu6BOMT2tvTd73HvrY4lNXGTh_Thf0XuXJgyvrp7z6Fm5_-WlGtBwQQZg0qt.jpg",
        ],
        "LADA Granta не нужно кому-то что-то доказывать. Она уже заслужила доверие более миллиона автомобилистов и прошла проверку нашими дорогами. Не адаптированная, а разработанная специально для российских условий, LADA Granta уверена в себе на каждом километре пути. Увеличенные ходы подвесок, специальные настройки шасси и множество современных технологий делают поездки комфортными и безопасными. А благодаря широкой дилерской сети и трехлетней гарантии владельцам LADA Granta обеспечена постоянная поддержка в любом уголке страны. LADA Granta — это стильный и компактный, практичный и разносторонний помощник, союзник и друг. Такой, на которого всегда можно положиться и которому можно доверять на 100%.",
        "от 699 900 ",
        "	1.6 MT Classic ’22",
        "	Седан",
        "МКПП 5",
        "179",
        "5",
        "1596",
        ""),
    Car(
        "NIVA TRAVEL",
        [
          "https://static.lada.ru/images/v6/cars/configurator/niva-travel/travel.webp",
          "https://s2.auto.drom.ru/photo/nxND2KE62O4rnE2qier-k-h7ykHC3LIIKxxtCXlpoqrvWBWtm7grg0Rca3E9BPIS-TcPYwUkfUwObbDCQjfaep_75uJzhZso.jpg",
          "https://s2.auto.drom.ru/photo/oBFhq5Czl8jL03ojwInrkdLn24z-aUUOu1Bh1RagBUd6epEruuXmm5SpP5alpm50es0YOuujv5Ds6uYwxlc_IGx5Volfdu5-.jpg",
          "https://s2.auto.drom.ru/photo/OLSzlJvxdxEykypA5n6ZoyIgjkh56en7vLdfr57uYRtFLcwFXd44AF5IjJ854hdaj1gUNhHjahPzP3nsVRkzvDrl1LQFMT1O.jpg",
          "https://s2.auto.drom.ru/photo/VWVsxF_mTjR-It9uUAUWMlCWeah2cB29vXCG1gU4BwrPt0-yZXfQBgjV9gqcwiDtnlN5-F9LNcI7rRLsM9UVzOEdNl6KxkgK.jpg",
          "https://s2.auto.drom.ru/photo/_LGh-3UaJzrGw9iNJUdIO2t0Wtvup40tKah5-ssvz-rW16rs679Ppihz6VxbQKPOJJQQsZvst8a7eqYjSCsJ-MOEwNT7jKn6.jpg",
          "https://s2.auto.drom.ru/photo/S0cJ2J3pxG6JkVMMDzMW6-FDT9L-u9AIb7YKyxrAYKq-KjGi8Q3Tn_tnDv8H5YpjUd6uNfZXudZHXq5oEfQvRWoK0Esqd6uN.jpg",
        ],
        "Легендарный автомобиль гармонично смотрится и среди лесов, и на городских улицах. Чуть сглаженная угловатость, выразительные формы кузова, яркая светотехника, пластиковый обвес кузова — решительный характер автомобиля отражен в каждой детали.",
        "от 1 198 900 ",
        "1.7 MT Classic",
        "	SUV",
        "МКПП 5",
        "140",
        "5",
        "1690",
        ""),
    Car(
        "VESTA СЕДАН",
        [
          "https://static.lada.ru/images/v6/cars/configurator/vesta_new/sedan.webp",
          "https://s2.auto.drom.ru/photo/xwmDaswkNvbc9KFn7x8k7IjFlesnOWoXtxJWlA7jhfpw2uq22Guf6ssfsUPjKRFsBDSeLk7nr8I_wRpx2YFofqGZ7Wrv2REZ.jpg",
          "https://s2.auto.drom.ru/photo/7nEHniUI5NYsa97o6UN8N7ZnCJ167FizYZqjgeGwlToP0nZHpnHy6X2G3u8iaRgQCJ3duIEyzmuMaUNZKO2206_Er3qOV--T.jpg",
          "https://s2.auto.drom.ru/photo/h1zwjtgoio6ncijBdvsNw6pZCKgV3wlFgqi3BvDESlgo4Ca1c7QbpqNhf05Wp44rSVI74zcc6r0qq89AD58oW_CAOwCq48Ul.jpg",
          "https://s2.auto.drom.ru/photo/v8fWWk9Nkf73x7gaEEr0usqhvLd-nE6agshDIWnTbyzyP7L0IzD0QTSofJyNSQ-Wr7ciZFpTXjwl34jJSnRXogzqOsqQBRAN.jpg",
          "https://s2.auto.drom.ru/photo/mpL2dMo-ZGl6-zrPqOdGfrJCcdDHGVHwDx0dUgdWMN1BLvNIuJLa_VZLw-UB01vZDBl41jppXxqfOq4ceMozb7YJD6XEfOB0.jpg",
          "https://s2.auto.drom.ru/photo/LazVHqPf5Q9O2BlzCeSvcR7iHYd8nueeQP-qIjJEt_ITOvSM7bVFYQnftll8mSKCixcbWUDy75lmRimKMP3UczaBuvLcl6Gk.jpg",
          "https://s2.auto.drom.ru/photo/OyV1owXe4_lR7MU1C8FVhHdaDmGqOve5VE0v4MtYXGsFvGq8BqIUUO5dYd8lXFWOT4d02m8U-LdwkrKSPHRrAilaht_9gQ_w.jpg"
        ],
        "Энергичный дизайн LADA Vesta новое поколение стал еще привлекательней. Развитый рельеф бамперов создает современный и динамичный образ автомобиля, а новая светодиодная оптика делает его по-настоящему заметным.",
        "от 1 239 900 ",
        "1.6 MT Comfort",
        "Седан",
        "МКПП 5",
        "182",
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
                    child: Video(VideoLink: Url),
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
