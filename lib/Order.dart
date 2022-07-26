import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  late String resturantName;
  late String price;
  late String name;
  late String imagePath;
  late bool deliverd;

  Order(String resturantName, String price, String imagePath, String name, bool deliverd ,
      {Key? key})
      : super(key: key) {
    this.resturantName = resturantName;
    this.price = price;
    this.imagePath = imagePath;
    this.name = name;
    this.deliverd = deliverd;
  }

  @override
  State<Order> createState() =>
      _OrderState(resturantName, price, imagePath, name , deliverd);
}

class _OrderState extends State<Order> {
  late String resturantName;
  late String price;
  late String name;
  late String imagePath;
   late bool deliverd;

  _OrderState(
      String resturantName, String price, String imagePath, String name , bool deliverd) {
    this.resturantName = resturantName;
    this.price = price;
    this.imagePath = imagePath;
    this.name = name;
    this.deliverd = deliverd;
  }
  @override
  Widget build(BuildContext context) {
    String deliverdText = deliverd ? 'Delivered' : 'Not Delivered';
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
                      padding: const EdgeInsets.only(bottom: 25),
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
                              deliverdText,
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
                      padding: const EdgeInsets.only(bottom: 8, right: 60),
                      child: Text(
                          '200g meat,regular Bun,\nketchup,pickle Slices,\nonions and mustard '),
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
                        color: Colors.black.withOpacity(0.7),
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
}
