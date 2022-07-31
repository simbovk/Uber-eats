import 'package:flutter/material.dart';

class ResturantInfo extends StatefulWidget {
  late String resturantName;
  late String rate;
  late String resturantImagePath;
  late String resturantLabelImagePath;
  ResturantInfo(String resturantName, String rate, String resturantImagePath,
      String resturantLabelImagePath,
      {Key? key}) {
    this.resturantName = resturantName;
    this.rate = rate;
    this.resturantImagePath = resturantImagePath;
    this.resturantLabelImagePath = resturantLabelImagePath;
  }

  @override
  State<ResturantInfo> createState() => _ResturantInfoState();
}

class _ResturantInfoState extends State<ResturantInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: MediaQuery.of(context).size.width - 50,
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.2),
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
    );
  }
}
