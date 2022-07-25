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
            padding: const EdgeInsets.only(left: 10 , top: 5),
            child: Text('New Orders' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 25),),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10 , right: 10),
            child: Order('Star Bucks' , '3.99' , 'assets/images/skinnylattestarbucks.png' , 'Skinny Latte'),
          ),
        ],
      ),
    );
  }
}

