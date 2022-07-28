import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  late String resturantName;
  late String price;
  late String name;
  late String imagePath;
  late bool? deliverd;
  late String? date;
  late String? month;
  late String? watch;

  Order(String resturantName, String price, String imagePath, String name,
      bool? deliverd, String? date, String? month, String? watch,
      {Key? key})
      : super(key: key) {
    this.resturantName = resturantName;
    this.price = price;
    this.imagePath = imagePath;
    this.name = name;
    this.deliverd = deliverd;
    this.date = date;
    this.month = month;
    this.watch = watch;
  }

  @override
  State<Order> createState() => _OrderState(
      resturantName, price, imagePath, name, deliverd, date, month, watch);
}

class _OrderState extends State<Order> {
  bool pressCancel = false;
  late String resturantName;
  late String price;
  late String name;
  late String imagePath;
  late bool? deliverd;
  late String? date;
  late String? month;
  late String? watch;

  _OrderState(
    String resturantName,
    String price,
    String imagePath,
    String name,
    bool? deliverd,
    String? date,
    String? month,
    String? watch,
  ) {
    this.resturantName = resturantName;
    this.price = price;
    this.imagePath = imagePath;
    this.name = name;
    this.deliverd = deliverd;
    this.date = date;
    this.month = month;
    this.watch = watch;
  }
  @override
  Widget build(BuildContext context) {
    MaterialStateProperty<Color>? overlay;
    String deliverdTime = '$date,$month  $watch';
    String deliverdText = deliverd == true ? 'Delivered' : 'Not Delivered';
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        height: 190,
        width: MediaQuery.of(context).size.width - 50,
        decoration: BoxDecoration(
          color: Colors.green.withOpacity(0.2),
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(imagePath), fit: BoxFit.fill),
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                        height: 120,
                        width: 120,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                          SizedBox(
                            width: 55,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green.withOpacity(0.2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                            child: Text(
                              deliverdText != null ? deliverdText : '',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: Colors.green),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8, right: 54),
                      child: Text(
                        deliverdTime != null ? deliverdTime : '',
                        style: TextStyle(color: Colors.black.withOpacity(0.7)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // SizedBox(
                    //   height: 38,
                    //   width: 180,
                    //   child: ElevatedButton.icon(
                    //       onPressed: () {},
                    //       onLongPress: () {},
                    //       style: ButtonStyle(
                    //         backgroundColor:
                    //             MaterialStateProperty.all(Colors.white),
                    //         shape: MaterialStateProperty.all<
                    //             RoundedRectangleBorder>(
                    //           RoundedRectangleBorder(
                    //             borderRadius: BorderRadius.circular(8.0),
                    //           ),
                    //         ),
                    //       ),
                    //       icon: Icon(
                    //         Icons.cancel_outlined,
                    //         size: 25,
                    //         color: Colors.green,
                    //       ),
                    //       label: Text(
                    //         'Cancel Order',
                    //         style: TextStyle(
                    //           color: Colors.black,
                    //           fontSize: 18,
                    //         ),
                    //       )),
                    // ),
                    ElevatedButton(
                      child: Text('Cancel Order'),
                      style: ButtonStyle(
                        overlayColor: overlay,
                      ),
                      onPressed: () {
                        setState(() {
                          overlay = getColor(
                            Colors.white,
                            Colors.teal,
                          );
                        });
                      },
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(color: Colors.black.withOpacity(0.3)),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    resturantName,
                    style: TextStyle(
                        color: Colors.black.withOpacity(1),
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    r'$' + price,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  MaterialStateProperty<Color>? getColor(Color color, Color colorPressed) {
    final getColor = (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return colorPressed;
      } else {
        return color;
      }
    };

    return MaterialStateProperty.resolveWith(getColor);
  }
}
