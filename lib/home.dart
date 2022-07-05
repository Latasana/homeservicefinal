import 'package:homeservice/services.dart';

import '';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List servicelist = [
    {"id": 1, "logo": 'assets/logo/plumber.png', "text": 'Plumbing'},
    {"id": 2, "logo": 'assets/logo/tutor.png', "text": 'Home Tutor'},
    {"id": 3, "logo": 'assets/logo/carpenter.png', "text": 'Carpenter'},
    {"id": 4, "logo": 'assets/logo/driver.png', "text": 'Driver'},
    {"id": 5, "logo": 'assets/logo/beautician.png', "text": 'Beautician'},
    {"id": 6, "logo": 'assets/logo/laundry.png', "text": 'Laundry Service'},
    {"id": 7, "logo": 'assets/logo/electrician.png', "text": 'Electrician'},
    {"id": 8, "logo": 'assets/logo/bottle.png', "text": 'Water Supplier'},
    {"id": 9, "logo": 'assets/logo/mechanic.png', "text": 'Mechanics'},
    {"id": 10, "logo": 'assets/logo/gardener.png', "text": 'gardening'},
    {"id": 11, "logo": 'assets/logo/caretaker.png', "text": 'Care Taker'},
    {"id": 12, "logo": 'assets/logo/civil-work.png', "text": 'Civil work'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              iconSize: 30, onPressed: (() {}), icon: Icon(Icons.menu)),
          title: Text("HOME SERVICE PROVIDER")),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 20, mainAxisSpacing: 20),
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                color: Colors.amber[100],
                height: 300,
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Services()));
                      },
                      child: Image.asset(
                        servicelist[index]["logo"],
                        cacheHeight: 150,
                        cacheWidth: 150,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(servicelist[index]["text"]),
                  ],
                ),
              );
            },
            shrinkWrap: true,
            itemCount: servicelist.length,
          ),
        ]),
      ),
    );
  }
}
