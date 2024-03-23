import 'package:flutter/material.dart';

import '../screan/Catalogs/cars.dart';
import '../screan/basket.dart';
import '../screan/favorite.dart';

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

      if(_selectedIndex == 0){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => scrCars()));
      }
      else if(_selectedIndex == 1){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => BascketScr()));
      }
      else if(_selectedIndex == 2){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FavoriteScr()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Каталог',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_basket),
        label: 'Корзина',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: 'Избранное',
      ),
    ],
      currentIndex: _selectedIndex,
      //selectedItemColor: Color.fromARGB(255, 140, 73, 255),
      onTap: _onItemTapped,
    );
  }
}
