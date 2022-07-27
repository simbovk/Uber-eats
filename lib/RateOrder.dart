import 'package:flutter/material.dart';

class RateOrder extends StatefulWidget {
  late String resturantName;
  late String price;
  late String name;
  late String imagePath;
  late bool? deliverd;
  late String? date;
  late String? month;
  late String? watch;
  RateOrder(String resturantName,
    String name,
    String? date,
    String? month,
    String? watch,{Key? key}) : super(key: key);
  

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
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Column(
          children: [
            Text('Rate To'),
          ],
        ),
      ),
    );
  }
}
