import 'package:flutter/material.dart';

class Navbar {
  dynamic context;
  dynamic bottomNav;

  Navbar(this.context) {
    bottomNav = BottomNavigationBar(
        onTap: (index) {
          switch(index) {
              case 0:
                Navigator.pushNamed(context, '/');
                break;
              case 1:
                Navigator.pushNamed(context, '/greenhouse');
                break;
              case 2:
                Navigator.pushNamed(context, '/scanner');
                break;
              case 3:
                Navigator.pushNamed(context, '/search');
                break;   
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
            label: 'Greenhouse',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.photo,
              color: Colors.black,
            ),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: 'Search',
          ),
        ],
      );
  }

  getNav() {
    return bottomNav;
  }
}