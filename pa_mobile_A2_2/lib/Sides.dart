import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_mobile_b1/Dessert.dart';
import 'Cart.dart';
import 'DetailPageDesserts.dart';
import 'DetailPagePromo.dart';
import 'LandingPage.dart';
import 'MainPage.dart';
import 'controller.dart';
import 'profile.dart';
import 'DetailPageSides.dart';

class sides extends StatefulWidget {
  const sides({Key? key}) : super(key: key);

  @override
  State<sides> createState() => sidesState();
}

class sidesState extends State<sides> {
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
                      "White Chocolate\nStrawberry Pastry Pie",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    "                      Apple Pie",
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
                          builder: (_) => detailsides1(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Sides1.png",
                      height: 136,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => detailsides2(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Sides2.png",
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
                      "Share Box",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    "                                      Honey Garlic Fish Rice",
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
                          builder: (_) => detailsides3(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Sides3.png",
                      height: 136,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => detailsides4(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Sides4.png",
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
                      "Honey Garlic chicken Rice",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    "             Rica Rica Fish Rice",
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
                          builder: (_) => detailsides5(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Sides5.png",
                      height: 136,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => detailsides6(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Sides6.png",
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
                      "Rica Rica Chicken Rice",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    "              Beef Burger",
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
                          builder: (_) => detailsides7(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Sides7.png",
                      height: 136,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => detailsides8(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Sides8.png",
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
                      "Chicken Burger",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    "                          Fish Snack Wrap",
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
                          builder: (_) => detailsides9(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Sides9.png",
                      height: 136,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => detailsides10(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/Sides10.png",
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
