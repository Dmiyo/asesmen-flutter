import 'package:asesmen/screens/bills_screen.dart';
import 'package:asesmen/screens/cart_screen.dart';
import 'package:asesmen/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CartScreen(),
    BillScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if (index == 1) {
        // Navigate to CartScreen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CartScreen()),
        );
      }
      if (index == 2) {
        // Navigate to CartScreen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BillScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.my_library_books_outlined),
          label: 'Bill',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }
}
