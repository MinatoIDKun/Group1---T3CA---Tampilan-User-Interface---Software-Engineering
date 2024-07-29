import 'package:flutter/material.dart';
import 'package:firstapp/pages/splash/pages/home_page.dart';
import 'package:firstapp/pages/splash/pages/menu_page.dart';
import 'package:firstapp/pages/splash/pages/cart_page.dart';
import 'package:firstapp/pages/splash/pages/notification_page.dart';
import 'package:firstapp/pages/splash/pages/profile_page.dart';


class BottomNavBar extends StatefulWidget {
  final ValueChanged<int> onTabSelected;

  BottomNavBar({required this.onTabSelected,});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}
class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    HomePage(),
    MenuPage(),
    CartPage(),
    ProfilePage(),
    NotificationPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      widget.onTabSelected(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
        index: _selectedIndex,
        children: _pages.map ((page) {
          return Navigator(
            onGenerateRoute: (settings) {
              return MaterialPageRoute(
                builder: (context) => page,
              );
            },
          );
        }). toList(),
      ),
    ],
    ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex >= 0 ? _selectedIndex : 0,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (i) {
          setState(() {
            _selectedIndex = i;
          });
        }
      ),
    );
  }
}
