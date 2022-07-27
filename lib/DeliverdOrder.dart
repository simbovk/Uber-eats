import 'package:flutter/material.dart';

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
                      padding: const EdgeInsets.only(bottom: 8, right: 60),
                      child: Text(
                        deliverdTime != null ? deliverdTime : '',
                        style: TextStyle(color: Colors.black.withOpacity(0.7)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 38,
                          width: 100,
                          child: ElevatedButton.icon(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.green.withOpacity(0.5)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    side: const BorderSide(color: Colors.white),
                                  ),
                                ),
                              ),
                              icon: Icon(
                                Icons.change_circle_outlined,
                                size: 18,
                              ),
                              label: Text(
                                'Order Again',
                                style: TextStyle(color: Colors.black),
                              )),
                        ),
                        FlatButton(
                          onPressed: () => {},
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.payment_rounded,
                                color: Colors.green,
                                size: 25,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "Uber Vallet",
                                style: const TextStyle(fontSize: 18),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 30,
                                color: Colors.green,
                              ),
                            ],
                          ),
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
