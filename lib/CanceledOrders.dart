import 'package:flutter/material.dart';
import 'package:test_fluuter/RateOrder.dart';

class DeliverdOrder extends StatefulWidget {
  late String resturantName;
  late String price;
  late String name;
  late String imagePath;
  late bool? deliverd;
  late String? date;
  late String? month;
  late String? watch;

  DeliverdOrder(String resturantName, String price, String imagePath,
      String name, bool? deliverd, String? date, String? month, String? watch,
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
  State<DeliverdOrder> createState() => _DeliverdOrderState(
      resturantName, price, imagePath, name, deliverd, date, month, watch);
}

class _DeliverdOrderState extends State<DeliverdOrder> {
  late String resturantName;
  late String price;
  late String name;
  late String imagePath;
  late bool? deliverd;
  late String? date;
  late String? month;
  late String? watch;

  _DeliverdOrderState(
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
    String deliverdTime = '$date,$month  $watch';
    String deliverdText = deliverd == true ? 'Delivered' : 'Not Delivered';
    List<String> splittedName = resturantName.split('\n');
    String resturantSplittedName = splittedName[0] + splittedName[1];
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
                          padding: const EdgeInsets.only(bottom: 5),
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
                                width: 60,
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
                                      color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20, right: 45),
                          child: Text(
                            deliverdTime != null ? deliverdTime : '',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.7)),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 38,
                          width: 90,
                          child: ElevatedButton.icon(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                              icon: Icon(
                                Icons.cached_rounded,
                                size: 18,
                                color: Colors.green,
                              ),
                              label: Text(
                                'Order Again',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ],
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
}
