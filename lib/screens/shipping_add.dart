import 'package:flutter/material.dart';
import 'package:flutter_nhom5_petshop/screens/productdetail.dart';

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
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
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
          // TODO: Xử lý hành động khi nhấn vào Floating Action Button
          Navigator.push(
        context, MaterialPageRoute(builder: (context) => ProductDetailPage()));
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
                ),
                Text('Use as the default shiping address'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        // TODO: Xử lý hành động chỉnh sửa địa chỉ
                      },
                      child: Text('Edit'),
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

void main() {
  runApp(MaterialApp(
    home: ShippingAddressesPage(),
  ));
}
