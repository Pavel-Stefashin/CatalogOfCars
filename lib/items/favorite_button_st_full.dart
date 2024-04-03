import 'package:flutter/material.dart';
import 'cars_list.dart';
import 'favorite_list.dart';

class FavoriteButton extends StatefulWidget {

  int ID;
  String Text;

  FavoriteButton(this.ID, this.Text);

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState(ID, Text);
}

class _FavoriteButtonState extends State<FavoriteButton> {

  int ID;
  String Text;

  _FavoriteButtonState(this.ID, this.Text);

  Icon _icon = Icon(Icons.favorite_border);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: _icon,
      iconSize: 15.0,
      color: Colors.red,
      onPressed: () {


        final res = FavoriteList.where(
                (element) => element == Cars[ID]).toList();
        if (res.length == 0) {
          Cars[ID].InFavorite = true;
          FavoriteList.add(Cars[ID]);
        } else {
          Cars[ID].InFavorite = false;
          FavoriteList.remove(Cars[ID]);
        }

        if(Cars[ID].InFavorite)
        {
          setState(() {
            _icon = Icon(Icons.favorite);
          });
        }
        else{
          setState(() {
            _icon = Icon(Icons.favorite_border);
          });
        }

      },
      tooltip: Text,
      splashColor: Colors.redAccent,
    );
  }
}
