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
          elevation: 0,
          actions: [
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      padding: const EdgeInsets.only(right: 330),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.green,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    // IconButton(
                    //   // padding: ,
                    //   icon: const Icon(
                    //     Icons.shopping_basket_rounded,
                    //     color: Colors.green,
                    //   ),
                    //   onPressed: () {
                    //     // like drawer
                    //   },
                    // ),
                  ],
                )
              ],
            )
          ],
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text('Rate To $name in $resturantName',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
