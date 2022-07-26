import 'package:flutter/material.dart';

import 'Order.dart';

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
            padding: const EdgeInsets.only(top: 15 , right: 210 ),
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
                // 'a few shots of espresso \n with steamed milk and a dollop of frothed milk, \n flavored with a ribbon of vanilla syrup'),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Order(
                'Star Bucks\n(la,orange county)',
                '3.99',
                'assets/images/skinnylattestarbucks.png',
                'Skinny Latte',
                // 'a few shots of espresso \n with steamed milk and a dollop of frothed milk, \n flavored with a ribbon of vanilla syrup'),
            ),
          ),
        ],
      ),
    );
  }
}
