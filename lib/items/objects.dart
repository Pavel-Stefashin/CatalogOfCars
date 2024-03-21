import 'package:flutter/material.dart';
import 'package:laba2/screan/productScr.dart';
import '../screan/Catalogs/cars.dart';


class Product{
  String Name;
  String Photo;
  String Description;
  String Price;
  Product(this.Name, this.Photo, this.Description, this.Price);
}

class ProductButton extends StatelessWidget {
  String Name;
  String Photo;
  String Description;
  String Price;

  ProductButton(this.Name, this.Photo, this.Description, this.Price);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProdactCard(this.Name, this.Photo, this.Description, this.Price)));},
          child: Image.network(Photo));
  }
}



class CarsButton extends StatelessWidget {
  String Name;
  List<String>  Photo;
  String Description;
  String Price;
  String PackageName;
  String BodyType;
  String TransmissionType;
  String MaxSpeed;
  String NumberOfSeats;
  String EngineDisplacement;
  String Url;
  CarsButton(this.Name, this.Photo, this.Description, this.Price, this.PackageName,
  this.BodyType, this.TransmissionType, this.MaxSpeed,
  this.NumberOfSeats, this.EngineDisplacement, this.Url);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) =>
          CarsCard(this.Name, this.Photo, this.Description, this.Price,
                  this.PackageName, this.BodyType, this.TransmissionType,
                  this.MaxSpeed, this.NumberOfSeats, this.EngineDisplacement, this.Url)));},
        child: Image.network(Photo[0]));
  }
}

