import 'package:flutter/material.dart';
import 'package:firstapp/pages/splash/pages/cart_detail.dart';
import 'package:firstapp/pages/splash/pages/notification_page.dart';
import 'package:firstapp/pages/splash/widgets/Button/drawer.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Cart',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
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
      body: ListView(
        children: [
          for (int i = 0; i < 8; i++) RestaurantItem(),
        ],
      ),
    );
  }
}

class RestaurantItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CartDetail()),
        );
      },
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Discount 40% · Up to Rp50.000',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Resto - Loc',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '3 items · 40-50 mins · 5.4 km',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16),
                Image.network(
                  'https://via.placeholder.com/50',
                  width: 50,
                  height: 50,
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey),
        ],
      ),
    );
  }
}