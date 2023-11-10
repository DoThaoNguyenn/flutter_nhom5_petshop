import 'package:flutter/material.dart';
import 'package:flutter_nhom5_petshop/screens/addshippingadd.dart';


import 'package:flutter_nhom5_petshop/screens/editadd.dart';
class ShippingAddressesPage extends StatefulWidget {
  @override
  _ShippingAddressesPageState createState() => _ShippingAddressesPageState();
}

class _ShippingAddressesPageState extends State<ShippingAddressesPage> {
  String? selectedAddress;

  void _updateSelectedAddress(String address) {
    setState(() {
      selectedAddress = address;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        iconTheme: IconThemeData(
            color: const Color.fromARGB(255, 255, 255, 255)), //
      ),
      body: Container(
        padding: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shipping Addresses',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            ShippingAddressCard(
              name: 'John Doe',
              address: '123 Main St, City, State',
              phoneNumber: '123-456-7890',
              isSelected: selectedAddress == 'John Doe',
              onSelect: _updateSelectedAddress,
            ),
            SizedBox(height: 16.0),
            ShippingAddressCard(
              name: 'Jane Smith',
              address: '456 Elm St, City, State',
              phoneNumber: '987-654-3210',
              isSelected: selectedAddress == 'Jane Smith',
              onSelect: _updateSelectedAddress,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddAddressPage(),
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        elevation: 8.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class ShippingAddressCard extends StatelessWidget {
  final String name;
  final String address;
  final String phoneNumber;
  final bool isSelected;
  final Function(String) onSelect;

  const ShippingAddressCard({
    required this.name,
    required this.address,
    required this.phoneNumber,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(phoneNumber),
              ],
            ),
            SizedBox(height: 8.0),
            Text(address),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Checkbox(
                  value: isSelected,
                  onChanged: (value) {
                    onSelect(name);
                  },
                  activeColor: Colors.red,
                ),
                Text('Use as the default shipping address'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        // TODO: Xử lý hành động chỉnh sửa địa chỉ
                      },
                      child:
                        TextButton(
  onPressed: () {
    _navigateToEditAddressPage(context);
  },
  child: Text('Edit'),
), 
                      
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AddShippingCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Add Shipping Cart'),
      ),
      body: Container(
        // TODO: Thêm UI cho trang "add_shipping_cart"
      ),
    );
  }
}
void _navigateToEditAddressPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => EditAddAddressPage(),
    ),
  );
}

void main() {
  runApp(MaterialApp(
    home: ShippingAddressesPage(),
  ));
}