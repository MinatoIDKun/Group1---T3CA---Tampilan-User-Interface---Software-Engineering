import 'package:flutter/material.dart';
import 'package:firstapp/pages/splash_view.dart';
import 'package:firstapp/pages/splash/pages/home_page.dart';
import 'package:firstapp/configs/theme/app_theme.dart';
import 'package:firstapp/pages/splash/pages/notification_page.dart';
import 'package:firstapp/pages/splash/widgets/widgets.dart';
import 'package:firstapp/pages/splash/pages/cart_page.dart';
import 'package:firstapp/pages/splash/pages/cart_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //menghilangkan logo debug flutter
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,

      //saat aplikasi dijalankan, akan diarahkan ke halaman splash
      home: SplashView(),
      routes: {
        '/cartpage': (context) => CartPage(),
        '/cartdetail': (context) => CartDetail(),
        '/notificationpage': (context) => NotificationPage(),
      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    int _selectedTabIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedTabIndex == 0 ? HomePage() : Container(),
      bottomNavigationBar: BottomNavBar(onTabSelected: _onTabSelected),
    );
  }
}
