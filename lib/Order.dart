import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Order extends StatefulWidget {
  String? resturantName;
  String? price;
  String? name;
  String? imagePath;

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
  String? resturantName;
  String? price;
  String? name;
  String? imagePath;

  _OrderState(
      String? resturantName, String? price, String? imagePath, String? name) {
    this.resturantName = resturantName;
    this.price = price;
    this.imagePath = imagePath;
    this.name = name;
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
