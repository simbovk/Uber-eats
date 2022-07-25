import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10 , top: 5),
          child: Text('New Orders' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 25),),
        ),
      ],
    );
  }
}

