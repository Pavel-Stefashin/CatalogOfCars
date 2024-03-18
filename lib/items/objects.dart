import 'package:flutter/material.dart';
import 'package:laba2/screan/productScr.dart';
import '../screan/Catalogs/cars.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';



class MyTextField extends StatelessWidget {
  String fildTitle = '';

  MyTextField(String myTextField_Title)
  {
    fildTitle = myTextField_Title;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            labelText: fildTitle
        )
    );
  }
}

class DateField extends StatelessWidget {
  DateField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class SwitchField extends StatefulWidget {
  const SwitchField({super.key});

  @override
  State<SwitchField> createState() => _SwitchFieldState();
}

class _SwitchFieldState extends State<SwitchField> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Color.fromARGB(255, 102, 73, 143),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}

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

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Carousel(),
    );
  }
}


class Video extends StatelessWidget {
  final String VideoLink;

  const Video({Key? key, required this.VideoLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = YoutubePlayerController();
    _controller.loadVideoById(videoId: YoutubePlayerController.convertUrlToId(this.VideoLink.toString());

    return YoutubePlayer(
      controller: _controller,
      aspectRatio: 16 / 9,
    );
  }
}