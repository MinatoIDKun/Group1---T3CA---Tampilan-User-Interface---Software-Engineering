import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firstapp/pages/splash/pages/notification_page.dart';
import 'package:firstapp/pages/splash/widgets/Button/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Menu',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationPage()),
              );
            },
          )
        ],
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Special Offer Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.local_offer, size: 50, color: Colors.black),
                              SizedBox(height: 10),
                              Text(
                                'Special Offer',
                                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [1, 2, 3, 4, 5].map((url) {
                int index = [1, 2, 3, 4, 5].indexOf(url);
                return Container(
                  width: _currentIndex == index ? 12.0 : 8.0,
                  height: _currentIndex == index ? 12.0 : 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
            // Best Resto's Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Best Resto's",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.red),
                ),
              ),
            ),
            // Restaurant List
            _buildRestaurantCard('Resto', 'Japanese', 4.9, 2900),
            _buildRestaurantCard('Resto', 'Japanese', 4.2, 200),
            _buildRestaurantCard('Resto', 'Japanese', 4.5, 1500),
          ],
        ),
      ),
    );
  }

  Widget _buildRestaurantCard(String name, String type, double rating, int reviews) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            Container(
              height: 150.0,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              child: Center(
                child: Icon(Icons.restaurant, size: 100, color: Colors.red),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    type,
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Text('$rating ($reviews reviews)'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}