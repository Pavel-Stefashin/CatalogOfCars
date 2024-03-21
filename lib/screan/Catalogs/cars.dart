import 'package:flutter/material.dart';
import '../../items/cars_list.dart';
import '../cars_card.dart';

class scrCars extends StatelessWidget {
  scrCars({Key? key}) : super(key: key);

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
                    TextButton( onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CarsCard(index)));},
                        child: Image.network(Cars[index].Photo[0])),
              Expanded(child: Text(
                Cars[index].Name,
                style: TextStyle(fontSize: 10, color: Colors.black),
                softWrap: true,
              ),),
                Expanded(child:Text(
                "Цена: " + Cars[index].Price as String,
                style: TextStyle(fontSize: 10, color: Colors.black),
                softWrap: true,),
                ),
            ])
            );
          },
        ));
  }
}

