import 'package:flutter/material.dart';

class laba1 extends StatelessWidget {
  const laba1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
          child:
          Container(
            width: 1000,
            height: 800,
            padding: EdgeInsets.all(10),
            child: Column(
                children: <Widget>[
                  Container(
                    width: 500,
                    height: 100,
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.amber,),
                    child: Center(child: Text('Колонка 1',),),
                  ),
                  Container(
                    width: 500,
                    height: 100,
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.amber,),
                    child: Center(child: Text('Колонка 2',),),
                  ),
                  Container(
                    width: 500,
                    height: 100,
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.amber,),
                    child: Center(child: Text('Колонка 3',),),
                  ),
                  Container(
                    width: 500,
                    height: 100,
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.amber,),
                    child: Center(child: Text('Колонка 4',),),
                  ),
                ]),
          ),
          )
    );
  }
}
