import 'package:flutter/material.dart';

class ResturantInfo extends StatefulWidget {
  late String resturantName;
  late String rate;
  late String resturantImagePath;
  late String resturantLabelImagePath;
  late String branch;
  ResturantInfo(String resturantName, String rate, String resturantImagePath,
      String resturantLabelImagePath, String branch,
      {Key? key}) {
    this.resturantName = resturantName;
    this.rate = rate;
    this.resturantImagePath = resturantImagePath;
    this.resturantLabelImagePath = resturantLabelImagePath;
    this.branch = branch;
  }

  @override
  State<ResturantInfo> createState() => _ResturantInfoState(
      resturantName, rate, resturantImagePath, resturantLabelImagePath , branch);
}

class _ResturantInfoState extends State<ResturantInfo> {
  late String resturantName;
  late String rate;
  late String resturantImagePath;
  late String resturantLabelImagePath;
  late String branch;
  _ResturantInfoState(
      String resturantName,
      String rate,
      String resturantImagePath,
      String resturantLabelImagePath,
      String branch) {
    this.resturantName = resturantName;
    this.rate = rate;
    this.resturantImagePath = resturantImagePath;
    this.resturantLabelImagePath = resturantLabelImagePath;
    this.branch = branch;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width - 50,
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.2),
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      resturantImagePath != null ? resturantImagePath : ''),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12.0),
                  topLeft: Radius.circular(12.0)),
            ),
            height: 150,
            width: 362,
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                resturantName,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}
