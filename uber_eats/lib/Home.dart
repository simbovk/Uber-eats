import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
          backgroundColor: Colors.green,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 160),
                      child: Container(
                      height: 50,
                      width: 130,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            opacity: 0.6,
                            image: AssetImage("assets/images/uber_eats_logo.png"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
          
                  ),
                    ),
                    SizedBox(height: 10,),
                    Text('Amirali Vakili' , style: TextStyle(),)
                  ],
                )
              ),
              ListTile(
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('About'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Contact'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
