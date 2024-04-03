
class Car{
  int Id;
  String Name;
  List<String> Photo;
  String Description;
  int Price;
  String PackageName;
  String BodyType;
  String TransmissionType;
  String MaxSpeed;
  String NumberOfSeats;
  String EngineDisplacement;
  String Url;
  int Count;
  bool InFavorite;
  bool InBasket;


  Car(this.Id, this.Name, this.Photo, this.Description, this.Price, this.PackageName,
      this.BodyType, this.TransmissionType, this.MaxSpeed,
      this.NumberOfSeats, this.EngineDisplacement, this.Url, this.Count, this.InFavorite, this.InBasket);
}