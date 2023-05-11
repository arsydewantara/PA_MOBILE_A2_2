import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Cart.dart';
import 'DetailPageDesserts.dart';
import 'DetailPagePromo.dart';
import 'LandingPage.dart';
import 'MainPage.dart';
import 'Sides.dart';
import 'controller.dart';
import 'profile.dart';

import 'DetailPageSides.dart';

class Dessert extends StatefulWidget {
  const Dessert({Key? key}) : super(key: key);

  @override
  State<Dessert> createState() => DessertState();
}

class DessertState extends State<Dessert> {
  final switchController n = Get.put(switchController());
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 195, 36, 36)),
                child: Image.asset('assets/Logo.png'),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MainPage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text("Sides"),
                leading: Icon(Icons.kebab_dining),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => sides(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text("Dessert"),
                leading: Icon(Icons.icecream),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Dessert(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text("Profile"),
                leading: Icon(Icons.person),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Profile(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text("Cart"),
                leading: Icon(Icons.shopping_cart),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => cart(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        flexibleSpace: Obx(() => Container(
            color: n.switchValue.value
                ? Color.fromARGB(255, 195, 36, 36)
                : Colors.amber)),
        actions: [
          Obx(() => Switch(
                value: n.switchValue.value,
                onChanged: (newValue) {
                  n.switchValue(newValue);
                },
              )),
        ],
        backgroundColor: Colors.amber,
        title: Text("McDonald's"),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(height: 10),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Mix Berries McFlurry with\nOreo",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Text(
                      "Mix Berries McFlurry with\nFroot Loops",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => detaildessert1(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Desserts1.png",
                      height: 136,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => detaildessert2(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Desserts2.png",
                      height: 136,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "McFlurry featuring Oreo",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    "                Choco McFlurry",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => detaildessert3(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Desserts3.png",
                      height: 136,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => detaildessert4(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Desserts4.png",
                      height: 136,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Chocolate Sundae",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    "                       Strawberry Sundae",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => detaildessert5(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Desserts5.png",
                      height: 136,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => detaildessert6(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Desserts6.png",
                      height: 136,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
