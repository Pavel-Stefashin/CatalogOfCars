import 'package:flutter/material.dart';

class Car{
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


  Car(this.Name, this.Photo, this.Description, this.Price, this.PackageName,
      this.BodyType, this.TransmissionType, this.MaxSpeed,
      this.NumberOfSeats, this.EngineDisplacement, this.Url);
}