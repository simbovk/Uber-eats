import 'package:flutter/material.dart';

class RateOrder extends StatefulWidget {
  const RateOrder({Key? key}) : super(key: key);

  @override
  State<RateOrder> createState() => _RateOrderState();
}

class _RateOrderState extends State<RateOrder> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rate Order'),
          leading: Icon(Icons.arrow_back , color: Colors.green,),
        ),
      ),
    );
  }
}
