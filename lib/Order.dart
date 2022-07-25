import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
       decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.fill),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              height: 150,
              width: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20 ,right: 20),
            child: Column(
              children: [
                Text(
                  resturantName,
                  style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20 , color: Colors.green),
                ),
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
