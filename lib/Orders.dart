import 'package:flutter/material.dart';

import 'Order.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15 , right: 210 ),
            child: Text(
              'New Orders',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Order(
                'Star Bucks\n(la,orange county)',
                '3.99',
                'assets/images/skinnylattestarbucks.png',
                'Skinny Latte',
                false
                // 'a few shots of espresso \n with steamed milk and a dollop of frothed milk, \n flavored with a ribbon of vanilla syrup'),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Order(
                'McDonalds\n(la,orange county)',
                '8.99',
                'assets/images/hamburgermc.png',
                'Hamburger',
                false
                
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Order(
                'McDonalds\n(la,orange county)',
                '10.99',
                'assets/images/mcdoublemc.png',
                'McDouble',
                false
                // 'a few shots of espresso \n with steamed milk and a dollop of frothed milk, \n flavored with a ribbon of vanilla syrup'),
            ),
          ),
          SizedBox(height: 12),
           Padding(
            padding: const EdgeInsets.only(top: 15 , right: 175 ),
            child: Text(
              'Recent Orders',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
           SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Order(
                'Star Bucks\n(la,orange county)',
                '3.99',
                'assets/images/skinnylattestarbucks.png',
                'Skinny Latte',
                true
                // 'a few shots of espresso \n with steamed milk and a dollop of frothed milk, \n flavored with a ribbon of vanilla syrup'),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Order(
                'McDonalds\n(la,orange county)',
                '8.99',
                'assets/images/hamburgermc.png',
                'Hamburger',
                true
                // 'a few shots of espresso \n with steamed milk and a dollop of frothed milk, \n flavored with a ribbon of vanilla syrup'),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Order(
                'McDonalds\n(la,orange county)',
                '10.99',
                'assets/images/mcdoublemc.png',
                'McDouble',
                true
                // 'a few shots of espresso \n with steamed milk and a dollop of frothed milk, \n flavored with a ribbon of vanilla syrup'),
            ),
          ),
          SizedBox(height: 15,)
        ],
      ),
    );
  }
}
