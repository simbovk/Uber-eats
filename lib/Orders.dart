import 'package:flutter/material.dart';

import 'Order.dart';
import 'DeliverdOrder.dart';


class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 210),
            child: Text(
              'New Orders',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Order(
                'Star Bucks\n(la,orange county)',
                '3.99',
                'assets/images/skinnylattestarbucks.png',
                'Skinny Latte',
                false,
                'Saturday',
                'june(21th)',
                '12:43'),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Order(
                'McDonalds\n(la,orange county)',
                '8.99',
                'assets/images/hamburgermc.png',
                'Hamburger',
                false,
                'sunday',
                'june(22th)',
                '12:54'),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Order(
                'McDonalds\n(la,orange county)',
                '10.99',
                'assets/images/mcdoublemc.png',
                'McDouble',
                false,
                'monday',
                'june(23th)',
                '13:08'),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 175),
            child: Text(
              'Recent Orders',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Order(
                'Star Bucks\n(la,orange county)',
                '3.99',
                'assets/images/skinnylattestarbucks.png',
                'Skinny Latte',
                true,
                'monday(11th)',
                'july',
                '13:08'),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Order(
                'McDonalds\n(la,orange county)',
                '8.99',
                'assets/images/hamburgermc.png',
                'Hamburger',
                true,
                'monday',
                'june(3th)',
                '13:08'),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: DeliverdOrder(
                'McDonalds\n(la,orange county)',
                '10.99',
                'assets/images/mcdoublemc.png',
                'McDouble',
                true,
                'monday',
                'june(1th)',
                '13:08'),
          ),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
