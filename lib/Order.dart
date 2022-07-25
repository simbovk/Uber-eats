import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  late String resturantName;
  late String price;
  late String name;
  late String imagePath;

  Order(String resturantName, String price, String imagePath, String name,
      {Key? key})
      : super(key: key) {
    this.resturantName = resturantName;
    this.price = price;
    this.imagePath = imagePath;
    this.name = name;
  }

  @override
  State<Order> createState() =>
      _OrderState(resturantName, price, imagePath, name);
}

class _OrderState extends State<Order> {
  late String resturantName;
  late String price;
  late String name;
  late String imagePath;

  _OrderState(
      String resturantName, String price, String imagePath, String name) {
    this.resturantName = resturantName;
    this.price = price;
    this.imagePath = imagePath;
    this.name = name;
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width - 50,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(imagePath), fit: BoxFit.fill),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                        height: 120,
                        width: 120,
                      ),
                      Text(
                        resturantName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                          ),
                          child: Text(
                            'Not Delivered',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                    Text(
                        'a few shots of espresso \n with steamed milk and\n a dollop of frothed milk, \n flavored with \na ribbon of vanilla syrup')
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
