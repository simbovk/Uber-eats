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
    Color? colorCanceledText = Colors.green;
    String? textCanceled = "Cancel Order";
    Color? cancelBUttonColor = Colors.white;
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
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 0),
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
                        SizedBox(height: 10,),
                        Padding(
                      padding: const EdgeInsets.only(bottom: 0, right: 50),
                      child: Text(
                        deliverdTime != null ? deliverdTime : '',
                        style: TextStyle(color: Colors.black.withOpacity(0.7)),
                      ),
                    ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: ElevatedButton(
                        child: Text(
                          textCanceled,
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(cancelBUttonColor),
                          overlayColor: getColor(
                            Colors.white,
                            Colors.teal,
                          ),
                        ),
                        onPressed: () {},
                      ),
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
