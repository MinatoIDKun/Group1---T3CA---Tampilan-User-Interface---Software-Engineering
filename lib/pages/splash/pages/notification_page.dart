import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firstapp/pages/splash/widgets/Button/drawer.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Notification',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: Column(
        children: [
          SizedBox(height: 20.0), // Space between AppBar and the text widgets
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  'All',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 10.0), // Space between "All" and "Latest"
              Text(
                'Latest',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
          SizedBox(height: 20.0), // Space between the row and the list
          Expanded(
            child: ListView.builder(
              itemCount: 6, // Number of notifications
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  child: Card(
                    elevation: 2.0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'OnE22062024',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Resto - Loc'),
                              Text('1 item · Rp50.000'),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                                decoration: BoxDecoration(
                                  color: index % 3 == 0
                                      ? Colors.green[100]
                                      : index % 3 == 1
                                          ? Colors.red[100]
                                          : Colors.yellow[100],
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Text(
                                  index % 3 == 0
                                      ? 'Done'
                                      : index % 3 == 1
                                          ? 'Canceled'
                                          : 'On Going',
                                  style: TextStyle(
                                    color: index % 3 == 0
                                        ? Colors.green
                                        : index % 3 == 1
                                            ? Colors.red
                                            : Colors.yellow[800],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Image.asset(
                                'assets/restaurant.png', // Replace with your image asset
                                width: 50.0,
                                height: 50.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}