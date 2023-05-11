import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Cart.dart';
import 'Dessert.dart';
import 'DetailPageDesserts.dart';
import 'DetailPagePromo.dart';
import 'LandingPage.dart';
import 'Sides.dart';
import 'controller.dart';
import 'profile.dart';

import 'DetailPageSides.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
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
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => detailpromo1(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Promo1.png",
                      height: 136,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => detailpromo2(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Promo2.png",
                      height: 136,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "PaMer 5 Ayam Lengkuas\nA La Carte + Iced Coffee",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text(
                      "2 PaNas1 Ayam Lengkuas\n+ 2 Tehbotol Sosro Kotak + 2\nMcFlurry feat. Oreo",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => detailpromo3(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Promo3.png",
                      height: 136,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => detailpromo4(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Promo4.png",
                      height: 136,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Lengkuas Sambal Bajak",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    "        Share Box",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => detailpromo5(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Promo5.png",
                      height: 136,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => detailpromo6(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Promo6.png",
                      height: 136,
                    ),
                  ),
                ],
              ),
            ),
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
                    margin: EdgeInsets.only(left: 30),
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
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => detailpromo7(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Promo7.png",
                      height: 136,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => detailpromo8(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Promo8.png",
                      height: 136,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "White Chocolate\nStrawberry Pastry Pie",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    "            Paket Hantaran McD",
                    style: TextStyle(
                      color: Colors.black,
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
