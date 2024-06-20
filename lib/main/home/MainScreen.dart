import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

// screen
import 'package:choc_cafe/main/home/HomeScreen.dart';
import 'package:choc_cafe/main/favorites/FavoriteScreen.dart';
import 'package:choc_cafe/main/menu/MenuWidget.dart';
import 'package:choc_cafe/main/order/OrderWidget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _screens = [
    HomeScreen(),
    MenuWidget(),
    OrderWidget(),
    FavoriteScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.category),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.buy),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.heart),
            label: 'Favorites',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
