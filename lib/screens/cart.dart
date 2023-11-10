import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constants/image.dart';
import '../model/item_cart_model.dart';

import 'package:flutter_nhom5_petshop/screens/Checkout.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  static const primaryColor = Color(0xFFCB351E);
  List<ItemCart> itemSelect = [];
  List<ItemCart> items = [
    ItemCart('01', 'Healthy PET Food', img1, 100000, 80000, 1),
    ItemCart('02', 'Pawlicious Treats', img2, 100000, 80000, 1),
    ItemCart('03', 'Meow Munchies', img3, 100000, 80000, 1),
    ItemCart('04', 'Bark Bites', img4, 100000, 80000, 1),
    ItemCart('05', 'Fur-Friendly Feasts', img4, 100000, 80000, 1),
    ItemCart('06', 'Fur-Friendly Feasts', img4, 100000, 80000, 1),
    ItemCart('07', 'Fur-Friendly Feasts', img4, 100000, 80000, 1),
    ItemCart('08', 'Fur-Friendly Feasts', img4, 100000, 80000, 1),
    ItemCart('09', 'Fur-Friendly Feasts', img4, 100000, 80000, 1),
  ];
  final List<ItemCart> _itemSearch = [];
  late int _totalPrice = 0;
  final _myController = TextEditingController();

  void updateTotalPrice() {
    _totalPrice = itemSelect.fold(0, (previousValue, element) {
      return previousValue + element.priceDiscount * element.amount;
    });
  }

  ///Convert money
  String toVND({int? value}) {
    final formatCurrency = NumberFormat.currency(locale: 'vi_VN', symbol: '');
    final money = formatCurrency.format(value);
    return money;
  }

  ///Convert amount
  String toAmount({int? value}) {
    if (value! < 10) {
      return "0$value";
    }
    return "$value";
  }

  Widget _buildListItem(ItemCart item, int index) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        margin: const EdgeInsets.only(bottom: 10),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: itemSelect.contains(item)
              ? const Color(0xFFFFCBC7)
              : Colors.white,
        ),
        child: Stack(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Image.asset(
                  item.image,
                  height: 130,
                  width: 136,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: toVND(value: item.price),
                          style: const TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                              decoration: TextDecoration.lineThrough)),
                      const TextSpan(text: '  '),
                      TextSpan(
                          text: toVND(value: item.priceDiscount),
                          style: const TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.w600))
                    ]),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        star,
                        width: 11,
                        height: 10,
                      ),
                      Image.asset(
                        star,
                        width: 11,
                        height: 10,
                      ),
                      Image.asset(
                        star,
                        width: 11,
                        height: 10,
                      ),
                      Image.asset(
                        star,
                        width: 11,
                        height: 10,
                      ),
                      Image.asset(
                        star,
                        width: 11,
                        height: 10,
                      ),
                      const Text(
                        '(29)',
                        style: TextStyle(fontSize: 10),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              items[index].amount++;
                              updateTotalPrice();
                            });
                          },
                          icon: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  offset: Offset(0.66667, 0.66667),
                                  blurRadius: 2.66667,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: const Center(
                                child: Text(
                              '+',
                              style: TextStyle(fontSize: 18),
                            )),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        toAmount(value: item.amount),
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                          onPressed: () {
                            if (items[index].amount > 1) {
                              setState(() {
                                items[index].amount--;
                                updateTotalPrice();
                              });
                            }
                          },
                          icon: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  offset: Offset(0.66667, 0.66667),
                                  blurRadius: 2.66667,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Center(
                                child: Text(
                              '-',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: items[index].amount == 1
                                      ? Colors.black.withOpacity(0.2)
                                      : Colors.black),
                            )),
                          )),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            right: 0,
            child: itemSelect.contains(item)
                ? Image.asset(tickCheck)
                : Image.asset(tickUncheck),
          )
        ]),
      ),
      onTap: () {
        setState(() {
          if (itemSelect.contains(item)) {
            itemSelect.remove(item);
          } else {
            itemSelect.add(item);
          }
          updateTotalPrice();
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF9F9F9),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(4, 1),
              blurRadius: 4,
              spreadRadius: 0,
            ),
          ],
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total Amount',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    toVND(value: _totalPrice),
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => Checkout(),
            ),
      );
                  },
                  style: ElevatedButton.styleFrom(
                      shadowColor: const Color.fromRGBO(0, 0, 0, 0.25),
                      elevation: 4,
                      backgroundColor: const Color(0xFFDB3022),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: const Text(
                    'Check out',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: TextField(
                      controller: _myController,
                      textAlign: TextAlign.left,
                      onChanged: onSearchTextChanged,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                          border: InputBorder.none,
                          hintText: 'Search',
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'My Cart',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: primaryColor,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Expanded(
              child: _itemSearch.isNotEmpty || _myController.text.isNotEmpty
                  ? ListView.builder(
                      itemCount: _itemSearch.length,
                      itemBuilder: (context, index) {
                        return _buildListItem(_itemSearch[index], index);
                      },
                    )
                  : ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return _buildListItem(items[index], index);
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  onSearchTextChanged(String text) async {
    _itemSearch.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }
    for (var item in items) {
      if (item.title.toLowerCase().contains(text.toLowerCase())) {
        _itemSearch.add(item);
      }
    }

    setState(() {});
  }
}
