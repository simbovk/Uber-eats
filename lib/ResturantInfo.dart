import 'package:flutter/material.dart';

class ResturantInfo extends StatefulWidget {
  late String resturantName;
  late String rate;
  late String resturantImagePath;
  late String resturantLabelImagePath;
  late String branch;
  late String categories;
  late String shippingPrice;
  ResturantInfo(String resturantName, String rate, String resturantImagePath,
      String resturantLabelImagePath, String branch, String categories, String shippingPrice,
      {Key? key}) {
    this.resturantName = resturantName;
    this.rate = rate;
    this.resturantImagePath = resturantImagePath;
    this.resturantLabelImagePath = resturantLabelImagePath;
    this.branch = branch;
    this.categories = categories;
    this.shippingPrice = shippingPrice;
  }

  @override
  State<ResturantInfo> createState() => _ResturantInfoState(resturantName, rate,
      resturantImagePath, resturantLabelImagePath, branch, categories , shippingPrice);
}

class _ResturantInfoState extends State<ResturantInfo> {
  late String resturantName;
  late String rate;
  late String resturantImagePath;
  late String resturantLabelImagePath;
  late String branch;
  late String categories;
  late String shippingPrice;
  _ResturantInfoState(
      String resturantName,
      String rate,
      String resturantImagePath,
      String resturantLabelImagePath,
      String branch,
      String categories
      , String shippingPrice) {
    this.resturantName = resturantName;
    this.rate = rate;
    this.resturantImagePath = resturantImagePath;
    this.resturantLabelImagePath = resturantLabelImagePath;
    this.branch = branch;
    this.categories = categories;
    this.shippingPrice = shippingPrice;
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
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Text(
                  resturantName,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                branch == null ? '' : branch,
                style: TextStyle(
                    fontSize: 16, color: Colors.black.withOpacity(0.6)),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 6),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 20,
                    ),
                    Text(
                      rate,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Row(
              children: [
                Text((categories == null ? " " : categories),
                    style: TextStyle(
                        fontSize: 16, color: Colors.black.withOpacity(1))),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Row(
              children: [
                Text('Shipping price' , style: TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.6))),
                SizedBox(width: 5,),
                Text(r'$' + (shippingPrice == null ? '' : shippingPrice) )
              ],
            ),
          )
        ],
      ),
    );
  }
}
