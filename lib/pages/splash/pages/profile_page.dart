import 'package:flutter/material.dart';
import 'package:firstapp/configs/theme/app_colors.dart';
import 'package:firstapp/pages/splash/pages/notification_page.dart';
import 'package:firstapp/pages/splash/widgets/Button/drawer.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Profile',
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
                        '1.789.000',
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
              SizedBox(height: 20),
              Text(
                'Your Wallet',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width * 0.8, // 80% of the screen width
                  padding: EdgeInsets.all(24), // Increased padding
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Priority Card',
                        style: TextStyle(
                          fontSize: 20, // Increased font size
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              offset: Offset(-1.5, -1.5),
                              color: Colors.black,
                            )]
                        ),
                      ),
                      Text(
                        'Shinta',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              offset: Offset(-1.5, -1.5),
                              color: Colors.black,
                            )]
                        )
                      ),
                      Text(
                        '5892 XXXX XXXX 982',
                        style: TextStyle(
                          fontSize: 23,
                          letterSpacing: 2,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              offset: Offset(-1.5, -1.5),
                              color: Colors.black,
                            )]
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
                children: [
                  WalletOption('Gopay', '+62 822 xxx xxx'),
                  WalletOption('Credit Card', '789 230 xxx xxx'),
                  WalletOption('OVO', '+62 822 xxx xxx'),
                  WalletOption('Virtual Account', '13898 3223 xxx'),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Your Report',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 200,
                child: Placeholder(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WalletOption extends StatelessWidget {
  final String title;
  final String subtitle;

  WalletOption(this.title, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8), // Reduced padding
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black), // Add border
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 15, // Reduced radius
            backgroundColor: Colors.grey,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center the text vertically
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary, // Change text color to red
                    fontSize: 16, // Adjust font size
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: AppColors.maroon, // Change text color to black
                    fontSize: 14, // Adjust font size
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}