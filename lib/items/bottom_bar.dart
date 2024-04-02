import 'package:flutter/material.dart';

import '../screan/Catalogs/cars.dart';
import '../screan/basket.dart';
import '../screan/favorite.dart';
import '../screan/profile.dart';
import '../screan/purchase.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if (_selectedIndex == 0) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CarsScr()));
      } else if (_selectedIndex == 1) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BascketScr()));
      } else if (_selectedIndex == 2) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => FavoriteScr()));
      }
      else if(_selectedIndex == 3){
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProfileScr(0)));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Каталог',
            backgroundColor: Color.fromRGBO(110, 66, 190, 0.8274509803921568)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket),
          label: 'Корзина',
            backgroundColor: Color.fromRGBO(110, 66, 190, 0.8274509803921568)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Избранное',
            backgroundColor: Color.fromRGBO(110, 66, 190, 0.8274509803921568)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Профиль',
            backgroundColor: Color.fromRGBO(110, 66, 190, 0.8274509803921568)
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
