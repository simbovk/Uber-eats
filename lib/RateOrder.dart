import 'package:flutter/material.dart';

class RateOrder extends StatefulWidget {
  late String resturantName;
  late String name;
  late String? date;
  late String? month;
  late String? watch;
  RateOrder(String resturantName, String name, String? date, String? month,
      String? watch,
      {Key? key}) {
    this.resturantName = resturantName;
    this.name = name;
    this.date = date;
    this.month = month;
    this.watch = watch;
  }

  @override
  State<RateOrder> createState() =>
      _RateOrderState(resturantName, name, date, month, watch);
}

class _RateOrderState extends State<RateOrder> {
  late String resturantName;
  late String name;
  late String? date;
  late String? month;
  late String? watch;
  _RateOrderState(
    String resturantName,
    String name,
    String? date,
    String? month,
    String? watch,
  ) {
    this.resturantName = resturantName;
    this.name = name;
    this.date = date;
    this.month = month;
    this.watch = watch;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(Icons.arrow_back , color: Colors.green,),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Rate To $name in $resturantName',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
