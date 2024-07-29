import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firstapp/pages/splash/pages/notification_page.dart';
import 'package:firstapp/pages/splash/widgets/Button/drawer.dart';
import 'package:firstapp/configs/theme/app_colors.dart';

class CartDetail extends StatefulWidget {
  @override
  _CartDetailState createState() => _CartDetailState();
}

class _CartDetailState extends State<CartDetail> {
  int _selectedIndex = -1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dine In / Reservation Tabs
            Container(
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Dine In',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Reservation',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Serving Options
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Serving options',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            _buildServingOption('Express', '< 30 mins', 'Rp10.000', true),
            _buildServingOption('Standard', '> 30 mins', 'Rp0', false),
            _buildServingOption('Saver', '> 1 hours', 'Rp0', false),
            // Order Summary
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order summary',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Add more',
                      style: TextStyle(color: AppColors.primary)
                      ),
                  ),
                ],
              ),
            ),
            _buildOrderItem('Food', 'Rp56.000', 'Edit'),
            Divider(),
            _buildOrderItem('Food', 'Rp100.000', 'additional spoon'),
            Divider(),
            // Subtotal and Fees
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFeeRow('Subtotal', 'Rp156.000'),
                  _buildFeeRow('Add Express', 'Rp10.000'),
                  _buildFeeRow('Parking fee', 'Rp2.000'),
                  _buildFeeRow('Apps fee', 'Rp3.000'),
                  _buildFeeRow('Rp5.000 off', '-Rp5.000', isDiscount: true),
                  Divider(),
                  _buildFeeRow('Total', 'Rp166.000', isTotal: true),
                ],
              ),
            ),
            // Payment Details
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Payment details',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            // Payment Options
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildPaymentOption('Gopay', 'Rp250.000', Icons.account_balance_wallet),
                _buildPaymentOption('Offers', 'Discount 40%', Icons.local_offer),
              ],
            ),
            // Place Order Button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle place order action
                },
                child: Center(
                  child: Text('Place Order')),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: AppColors.primary, // Text color
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  textStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServingOption(String title, String subtitle, String price, bool isSelected) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text(price),
      tileColor: isSelected ? Colors.red[50] : Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: isSelected ? Colors.red : Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      onTap: () {
        // Handle serving option selection
      },
    );
  }

  Widget _buildOrderItem(String title, String price, String subtitle) {
    return ListTile(
      leading: Icon(Icons.fastfood),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text(price),
    );
  }

  Widget _buildFeeRow(String label, String amount, {bool isDiscount = false, bool isTotal = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: isDiscount ? Colors.red : Colors.black,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            amount,
            style: TextStyle(
              color: isDiscount ? Colors.red : Colors.black,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentOption(String title, String subtitle, IconData icon) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.red),
          Text(
            title,
            style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold),
          ),
          Text(subtitle),
        ],
      ),
    );
  }
}