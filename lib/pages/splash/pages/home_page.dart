import 'package:flutter/material.dart';
import 'package:firstapp/pages/splash/pages/notification_page.dart';
import 'package:firstapp/configs/theme/app_colors.dart';
import 'package:firstapp/pages/splash/widgets/Button/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _onItemTapped(int index) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Home',
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
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.person, size: 60, color: Colors.black),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Shinta',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primary,
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                child: Text(
                                  'Priority',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'what are you craving for today?',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.maroon,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Rp',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: AppColors.primary,
                        ),
                      ),
                      Text(
                        '100',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.maroon,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        '256',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                      ),
                      Text(
                        'Buy',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.maroon,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '11',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                      ),
                      Text(
                        'Voucher',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.maroon,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '8',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                      ),
                      Text(
                        'Order',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.maroon,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'What do you want to eat or drink',
                      hintStyle: TextStyle(color: Colors.black,),
                      prefixIcon: Icon(Icons.search, color: Colors.white,),
                      filled: true,
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Current Location:',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: AppColors.maroon),
                      SizedBox(width: 5),
                      Text(
                        'Los Angeles, CA',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.maroon,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Nearby',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.25,
                          color: Colors.grey[300],
                          child: Center(child: Text('Image 1')),
                        ),
                        Text('Resto'),
                        Text('Country Food'),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text('4.5'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.25,
                          color: Colors.grey[300],
                          child: Center(child: Text('Image 2')),
                        ),
                        Text('Resto'),
                        Text('Country Food'),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text('4.5'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.25,
                          color: Colors.grey[300],
                          child: Center(child: Text('Image 3')),
                        ),
                        Text('Resto'),
                        Text('Country Food'),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text('4.5'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.25,
                          color: Colors.grey[300],
                          child: Center(child: Text('Image 4')),
                        ),
                        Text('Resto'),
                        Text('Country Food'),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text('4.5'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.25,
                          color: Colors.grey[300],
                          child: Center(child: Text('Image 5')),
                        ),
                        Text('Resto'),
                        Text('Country Food'),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text('4.5'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Best Resto',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 150,
                          color: Colors.grey[300],
                          child: Center(child: Text('Image A')),
                        ),
                        Text('Restaurant A'),
                        Text('Country Food'),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text('4.5'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 150,
                          color: Colors.grey[300],
                          child: Center(child: Text('Image B')),
                        ),
                        Text('Restaurant B'),
                        Text('Country Food'),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text('4.5'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 150,
                          color: Colors.grey[300],
                          child: Center(child: Text('Image C')),
                        ),
                        Text('Restaurant C'),
                        Text('Country Food'),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text('4.5'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 150,
                          color: Colors.grey[300],
                          child: Center(child: Text('Image D')),
                        ),
                        Text('Restaurant D'),
                        Text('Country Food'),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text('4.5'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 150,
                          color: Colors.grey[300],
                          child: Center(child: Text('Image E')),
                        ),
                        Text('Restaurant E'),
                        Text('Country Food'),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text('4.5'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Best Rated',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.25,
                          color: Colors.grey[300],
                          child: Center(child: Text('Image 1')),
                        ),
                        Text('Resto'),
                        Text('Country Food'),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text('4.5'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.25,
                          color: Colors.grey[300],
                          child: Center(child: Text('Image 2')),
                        ),
                        Text('Resto'),
                        Text('Country Food'),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text('4.5'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.25,
                          color: Colors.grey[300],
                          child: Center(child: Text('Image 3')),
                        ),
                        Text('Resto'),
                        Text('Country Food'),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text('4.5'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.25,
                          color: Colors.grey[300],
                          child: Center(child: Text('Image 4')),
                        ),
                        Text('Resto'),
                        Text('Country Food'),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text('4.5'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.25,
                          color: Colors.grey[300],
                          child: Center(child: Text('Image 5')),
                        ),
                        Text('Resto'),
                        Text('Country Food'),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text('4.5'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Cuisine',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.25,
                          color: Colors.grey[300],
                          child: Center(child: Text('Image 1')),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.25,
                          color: Colors.grey[300],
                          child: Center(child: Text('Image 2')),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.25,
                          color: Colors.grey[300],
                          child: Center(child: Text('Image 3')),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.25,
                          color: Colors.grey[300],
                          child: Center(child: Text('Image 4')),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.25,
                          color: Colors.grey[300],
                          child: Center(child: Text('Image 5')),
                        )
                          ],
                        ),
                      ],
                    )
              ),
                  ],
                ),
              ),
      )
    );
  }
}