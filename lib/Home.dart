import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.withOpacity(0.8),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 120),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.arrow_drop_down_rounded,
                    color: Colors.white,
                    semanticLabel: 'Address',
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(right: 30),
            //   child: Container(
            //     height: 50,
            //     width: 160,
            //     decoration: const BoxDecoration(
            //       image: DecorationImage(
            //           // opacity: 0.6,
            //           image: AssetImage("assets/images/uberEatsLogo.jpeg"),
            //           fit: BoxFit.fill),
            //       // borderRadius: BorderRadius.all(Radius.circular(8.0)),
            //     ),
            //   ),
            // ),
            IconButton(
              icon: const Icon(Icons.shopping_basket_sharp),
              onPressed: () {},
            ),
          ],
        ),
        drawer: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
          child: Drawer(
            backgroundColor: Colors.black.withOpacity(0.5),
            width: 250,
            // shape: ShapeBorder(),
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  decoration: const BoxDecoration(
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(30),
                    //     bottomLeft: Radius.circular(30)),
                    // border: Border(
                    //   bottom: BorderSide(
                    //     color: Colors,
                    //     width: 1,
                    //   ),
                    // ),
                    image: DecorationImage(
                      opacity: 0.8,
                      image: AssetImage('assets/images/fiftyShades.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      const Padding(
                        padding: EdgeInsets.only(right: 120, top: 50),
                        child: Text(
                          'Amirali Vakili',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 95, top: 5),
                        child: Text(
                          '+98 939 306 8161',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                ListTile(
                  title: const Text(
                    'My Restaurant',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.store,
                    color: Colors.green,
                    size: 25,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Divider(color: Colors.white),
                ListTile(
                  title: const Text(
                    'About',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.question_mark_rounded,
                    color: Colors.green,
                    size: 25,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Divider(color: Colors.white),
                ListTile(
                  title: const Text(
                    'Contact',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.phone,
                    color: Colors.green,
                    size: 25,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Divider(color: Colors.white),
                ListTile(
                  title: const Text(
                    'Log out',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.logout_rounded,
                    color: Colors.green,
                    size: 25,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    width: 390,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Search in Uber Eats',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.3),
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            showSearch(
                                context: context, delegate: MySearchDelegate());
                          },
                          icon: const Icon(
                            Icons.search,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Row(
                  children: [
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/supermarkets.png"),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                color: Colors.white),
                            height: 150,
                            width: 150,
                            child: GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     // builder: (context) => ,
                                //   ),
                                // );
                              },
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              'Supermarket',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.4),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 30),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/resturants.png"),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                color: Colors.white),
                            height: 150,
                            width: 150,
                            child: GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     // builder: (context) => ,
                                //   ),
                                // );
                              },
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Text(
                              'Restaurant',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.4),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: MediaQuery.of(context).size.height - 18,
                color: Colors.grey.withOpacity(0.15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 270, top: 10),
                      child: Text(
                        'Categories',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.8),
                          fontSize: 22,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 150,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/fastfood.png"),
                                            fit: BoxFit.fill,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          color: Colors.white,
                                        ),
                                        height: 120,
                                        width: 120,
                                      ),
                                    ),
                                    const Text(
                                      'fast food',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 25),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/seafood.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                        color: Colors.white,
                                      ),
                                      height: 120,
                                      width: 120,
                                    ),
                                    const Text(
                                      'Sea food',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 25),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/pasta.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                        color: Colors.white,
                                      ),
                                      height: 120,
                                      width: 120,
                                    ),
                                    const Text(
                                      'Pasta',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 25),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/internationalfood.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                        color: Colors.white,
                                      ),
                                      height: 120,
                                      width: 120,
                                    ),
                                    const Text(
                                      'International',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 25),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/fried.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                        color: Colors.white,
                                      ),
                                      height: 120,
                                      width: 120,
                                    ),
                                    const Text(
                                      'fried',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 25),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/other.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                        color: Colors.white,
                                      ),
                                      height: 120,
                                      width: 120,
                                    ),
                                    const Text(
                                      'Other',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 10)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/adv1.png"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        color: Colors.white,
                      ),
                      height: 150,
                      width: 350,
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     // builder: (context) => ,
                          //   ),
                          // );
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 200, top: 10),
                      child: Text(
                        'News in Uber eats',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.8),
                          fontSize: 22,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 150,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/nookcafe.png"),
                                            fit: BoxFit.fill,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          color: Colors.white,
                                        ),
                                        height: 120,
                                        width: 120,
                                      ),
                                    ),
                                    const Text(
                                      'nook cafe',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 25),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/artistcafe.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                        color: Colors.white,
                                      ),
                                      height: 120,
                                      width: 120,
                                    ),
                                    const Text(
                                      'artist cafe',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 25),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/chaibarcafe.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                        color: Colors.white,
                                      ),
                                      height: 120,
                                      width: 120,
                                    ),
                                    const Text(
                                      'chaibar cafe',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 10)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 335, top: 10),
                      child: Text(
                        'Best',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.8),
                          fontSize: 22,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 150,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/mcdonald.png"),
                                            fit: BoxFit.fill,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          color: Colors.white,
                                        ),
                                        height: 120,
                                        width: 120,
                                      ),
                                    ),
                                    const Text(
                                      'Mc Donald\'s',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 25),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/kfc.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                        color: Colors.white,
                                      ),
                                      height: 120,
                                      width: 120,
                                    ),
                                    const Text(
                                      'KFC',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 25),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/starbucks.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                        color: Colors.white,
                                      ),
                                      height: 120,
                                      width: 120,
                                    ),
                                    const Text(
                                      'starbucks',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 25),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/jo.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                        color: Colors.white,
                                      ),
                                      height: 120,
                                      width: 120,
                                    ),
                                    const Text(
                                      'Jo pizza',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/adv2.png"),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  color: Colors.white,
                ),
                height: 150,
                width: 350,
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     // builder: (context) => ,
                    //   ),
                    // );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height - 370,
                color: Colors.grey.withOpacity(0.15),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 270, top: 10),
                    child: Text(
                      'With Offers',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 22,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 160,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/icedcoffeewithsyrupstarbucks.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                        color: Colors.white,
                                      ),
                                      height: 120,
                                      width: 120,
                                    ),
                                  ),
                                  const Text(
                                    'iced coffee\nstarbucks',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(width: 25),
                              Column(
                                children: <Widget>[
                                  Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/skinnylattestarbucks.png"),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0)),
                                      color: Colors.white,
                                    ),
                                    height: 120,
                                    width: 120,
                                  ),
                                  const Text(
                                    'vanilla latte\nstarbucks',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(width: 25),
                              Column(
                                children: <Widget>[
                                  Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/nonfatmochastarbucks.png"),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0)),
                                      color: Colors.white,
                                    ),
                                    height: 120,
                                    width: 120,
                                  ),
                                  const Text(
                                    'nonfat mocha\nstarbucks',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(width: 10)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 250, top: 10),
                    child: Text(
                      'Free Shipping',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 22,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 160,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/hamburgermc.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                        color: Colors.white,
                                      ),
                                      height: 120,
                                      width: 120,
                                    ),
                                  ),
                                  const Text(
                                    'Hamburger\nMcdonald\'s',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(width: 25),
                              Column(
                                children: <Widget>[
                                  Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/mcdoublemc.png"),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0)),
                                      color: Colors.white,
                                    ),
                                    height: 120,
                                    width: 120,
                                  ),
                                  const Text(
                                    'Mc-Double\nMcDonald\'s',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(width: 25),
                              Column(
                                children: <Widget>[
                                  Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/cheeseburgermc.png"),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0)),
                                      color: Colors.white,
                                    ),
                                    height: 120,
                                    width: 120,
                                  ),
                                  const Text(
                                    'Cheese burger\nMcDonald\'s',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(width: 10)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black.withOpacity(0.4),
            ),
          ),
          child: BottomNavigationBar(
            fixedColor: Colors.green,
            unselectedItemColor: Colors.green,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(Icons.home_outlined),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => HomePage(),
                    //   ),
                    // );
                  },
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(Icons.list_alt_outlined),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const ShoppingCart(),
                    //   ),
                    // );
                  },
                ),
                label: 'Orders',
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(Icons.account_circle_outlined),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const ProfilePage(),
                    //   ),
                    // );
                  },
                ),
                label: 'My Account',
              ),
            ],
            //selectedItemColor: Colors.white,
          ),
        ),
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  List<String> suggestion = ['food', 'supermarket', 'restaurant'];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
        icon: const Icon(
          Icons.clear_rounded,
          color: Colors.green,
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.green,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(
        query,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = suggestion.where((suggest) {
      final result = suggest.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestions[index]),
          onTap: () {
            query = suggestions[index];
          },
        );
      },
    );
  }
}
