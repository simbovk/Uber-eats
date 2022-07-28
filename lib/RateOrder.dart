import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
  var rating = 0.0;
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
                      padding: const EdgeInsets.only(right: 380),
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
                height: 0,
              ),
              Text('Rate To $name in $resturantName',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.black.withOpacity(0.5),
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '$date,$month',
                      style: TextStyle(color: Colors.black.withOpacity(1)),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Icon(
                      Icons.watch_later_outlined,
                      color: Colors.black.withOpacity(0.5),
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '$watch',
                      style: TextStyle(
                          color:
                              Color.fromARGB(255, 43, 39, 39).withOpacity(1)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 190,
                  width: MediaQuery.of(context).size.width - 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Colors.green.withOpacity(0.4), width: 2),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text('How was the delivery of your order?',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      // SmoothStarRating(
                      //   rating: rating,
                      //   size: 45,
                      //   starCount: 5,
                      //   onRated: (value) {
                      //     setState(() {
                      //       rating = value;
                      //     });
                      //   },
                      // )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
