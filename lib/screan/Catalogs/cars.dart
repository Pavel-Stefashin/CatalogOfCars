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
          "https://static.lada.ru/images/v6/cars/tth/granta/sedan/profile_1.webp",
          "https://static.lada.ru/images/v6/cars/tth/granta/sedan/profile_2.webp",
        ],
        "LADA Granta не нужно кому-то что-то доказывать. Она уже заслужила доверие более миллиона автомобилистов и прошла проверку нашими дорогами. Не адаптированная, а разработанная специально для российских условий, LADA Granta уверена в себе на каждом километре пути. Увеличенные ходы подвесок, специальные настройки шасси и множество современных технологий делают поездки комфортными и безопасными. А благодаря широкой дилерской сети и трехлетней гарантии владельцам LADA Granta обеспечена постоянная поддержка в любом уголке страны. LADA Granta — это стильный и компактный, практичный и разносторонний помощник, союзник и друг. Такой, на которого всегда можно положиться и которому можно доверять на 100%.",
        "от 699 900 ",
        "	1.6 MT Classic ’22",
        "	Седан",
        "МКПП 5",
        "179",
        "5",
        "1596",
        "https://youtu.be/EJB6SRAJqNg?si=ietZ8d8dzGPImhhi"),
    Car(
        "NIVA TRAVEL",
        [
          "https://static.lada.ru/images/v6/cars/configurator/niva-travel/travel.webp",
          "https://static.lada.ru/images/v6/cars/tth/niva-travel/profile_1.webp",
          "https://static.lada.ru/images/v6/cars/tth/niva-travel/profile_2.webp",
        ],
        "Легендарный автомобиль гармонично смотрится и среди лесов, и на городских улицах. Чуть сглаженная угловатость, выразительные формы кузова, яркая светотехника, пластиковый обвес кузова — решительный характер автомобиля отражен в каждой детали.",
        "от 1 198 900 ",
        "1.7 MT Classic",
        "	SUV",
        "МКПП 5",
        "140",
        "5",
        "1690",
        "https://youtu.be/CLww5vuaTB8?si=AIEoPaytkicLF4B0"),
    Car(
        "VESTA СЕДАН",
        [
          "https://static.lada.ru/images/v6/cars/configurator/vesta_new/sedan.webp",
          "https://static.lada.ru/images/v6/cars/tth/vesta_new/sedan/profile_1.webp",
          "https://static.lada.ru/images/v6/cars/tth/vesta_new/sedan/profile_2.webp",
        ],
        "Энергичный дизайн LADA Vesta новое поколение стал еще привлекательней. Развитый рельеф бамперов создает современный и динамичный образ автомобиля, а новая светодиодная оптика делает его по-настоящему заметным.",
        "от 1 239 900 ",
        "1.6 MT Comfort",
        "Седан",
        "МКПП 5",
        "182",
        "5",
        "1596",
        "https://youtu.be/jg5RPqGE8z0?si=rYyxl21p4N0qcdsP"),
    Car(
        "NIVA LEGEND 3 ДВ.",
        [
          "https://static.lada.ru/images/v6/cars/configurator/niva-legend/3dv.webp",
          "https://static.lada.ru/images/v6/cars/tth/niva-legend/3dv/profile_1.webp",
          "https://static.lada.ru/images/v6/cars/tth/niva-legend/3dv/profile_2.webp",
        ],
        "LADA Niva Legend — автомобиль со всемирно известным дизайном, в котором продумана каждая деталь. Короткие свесы улучшают проходимость на пересечённой местности и позволяют безопасно парковаться вплотную к бордюрам. Компактный кузов — это удачное решение и для города, и для леса. А скругленные линии капота, дверей и колесных арок — классическое решение, актуальное всегда и везде.",
        "от 829 900 ",
        "1.7 MT Urban",
        "SUV",
        "МКПП 5",
        "142",
        "4",
        "1690",
        "https://youtu.be/9qVk5tH9nsM?si=sDq8D7kLe6uFsFLS"),
    Car(
        "VESTA SPORTLINE",
        [
          "https://static.lada.ru/images/v6/cars/configurator/granta/drive-active.webp",
          "https://static.lada.ru/images/v6/cars/tth/vesta_new/sportline/profile_2.webp",
          "https://static.lada.ru/images/v6/cars/tth/vesta_new/sportline/profile_1.webp",
        ],
        "Каждый маршрут становится гоночной трассой. Каждый водитель может быть самым быстрым. Силуэт — занижен, колея — расширена. Автомобиль со спортивным характером выделяется в потоке. Его слышно: выпуск настроен на свободное дыхание мотора. Под скорость создан и кузов: испытан в аэротрубе и оснащен тщательно проработанным обвесом.",
        "от 2 175 900 ",
        "	1.6 MT 2WD Sportline",
        "Седан",
        "МКПП 5",
        "190",
        "5",
        "1596",
        "https://youtu.be/YMrs_Oi927Y?si=SAl7T92VESqTJKZR"),
    Car(
        "LARGUS CROSS",
        [
          "https://static.lada.ru/images/v6/cars/configurator/new-largus/universal.webp",
          "https://static.lada.ru/images/v6/cars/tth/new-largus/cross/profile_1.webp",
          "https://static.lada.ru/images/v6/cars/tth/new-largus/cross/profile_2.webp",
        ],
        "LADA Largus Cross взял все самое лучшее сразу от трех типов автомобиля: универсала, микроавтобуса и кроссовера. Вместительный салон, отличное оснащение, удобная высокая посадка — то, что нужно для семейных путешествий. Широкий спектр возможностей автомобиля выражен и в оригинальном стиле, который сочетает мощь и динамику. LADA Largus Cross оснащается 16-клапанным двигателем, адаптированным для работы на бензине АИ-92. Это современный, надежный и экономичный мотор, который обеспечивает хорошую динамику и комфорт движения. Опрятный и ухоженный автомобиль, в котором всегда уверен и которым приятно пользоваться. Для того, чтобы ваша LADA была именно такой, мы уже включили в состав аксессуары: ",
        "от 2 175 900 ",
        "	1.6 MT Classic 5 мест",
        "Универсал",
        "МКПП 5",
        "160",
        "5",
        "1596",
        "https://youtu.be/sn8cOPiaD4o?si=-f95ZwaR0ByB037n"),
    Car(
        "GRANTA ФУРГОН",
        [
          "https://static.lada.ru/images/v6/cars/configurator/commercial/granta_lcv_furgon.webp",
          "https://static.lada.ru/images/v6/cars/about/granta/lcv/platform/main_desktop.jpg",
          "https://static.lada.ru/images/v6/cars/brochures/models/granta_lcv_furgon.jpg",
        ],
        "LADA Granta с бортовой платформой – надежный коммерческий автомобиль с полурамной конструкцией кузова и задней рессорной подвеской. В зависимости от задач бизнеса, можно выбрать стандартную либо удлинённую версию. Дополнительную защиту груза можно обеспечить, заказав версию со стеклопластиковым кунгом.",
        "от 1 267 000 ",
        "	1.6 MT Classic фургон",
        "Коммерческий фургон",
        "МКПП 5",
        "158",
        "2",
        "1596",
        "https://youtu.be/Fjefua7RLgM?si=n0mRZGRXdAFzXdMr"),
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
              Expanded(child: Text(
                Cars[index].Name,
                style: TextStyle(fontSize: 10, color: Colors.black),
                softWrap: true,
              ),),
                Expanded(child:Text(
                "Цена: " + Cars[index].Price as String,
                style: TextStyle(fontSize: 10, color: Colors.black),
                softWrap: true,
              ),),
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
            Expanded(child: Container(
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
                  /*Container(
                    margin: EdgeInsets.only(top: 8),
                    //color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Column(
                      children: [*/
                  Expanded(
                    child: /*ListView(
                            children: [*/
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
                    //],
                    //),
                  ),
                  //],
                  //),
                  //),
                  Container(
                    margin: EdgeInsets.only(top: 8, bottom: 20),
                    //color: Colors.pink,
                    /*width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.3,*/
                    child: Video(VideoLink: Url),
                  ),
                ],
              ),
            ),),
          ],
        ),
      ),
    );
  }
}
