import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'Daftar.dart';
import 'Login.dart';
import 'MainPage.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  static FirebaseAuth _auth = FirebaseAuth.instance;
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  Future SignIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String defaultFontFamily = 'Roboto-Light.ttf';
    double defaultFontSize = 14;
    double defaultIconSize = 17;
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference user = firestore.collection("user");
    return Scaffold(
      backgroundColor: Color.fromARGB(131, 188, 35, 35),
      body: ListView(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5, left: 5),
                  child: Image.asset(
                    "assets/Logo.png",
                    alignment: Alignment.topLeft,
                    height: 50,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 50),
                  child: Text(
                    "       McDonald's",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Text(
            "Big Mac, a Legend.",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            "Mouthwatering perfection start with two sear-sizzled\n100% pure beef patties and Big Mac sauce, sandwiched\nbetween a sesame seed bun. American cheese, crisp\nlettuce, onions and pickles top it off.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            showCursor: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xFF666666),
                size: defaultIconSize,
              ),
              fillColor: Color(0xFFF2F3F5),
              hintStyle: TextStyle(
                  color: Color(0xFF666666),
                  fontFamily: defaultFontFamily,
                  fontSize: defaultFontSize),
              hintText: "Email",
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            controller: _passwordController,
            textInputAction: TextInputAction.done,
            obscureText: true,
            showCursor: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              prefixIcon: Icon(
                Icons.lock_outline,
                color: Color(0xFF666666),
                size: defaultIconSize,
              ),
              fillColor: Color(0xFFF2F3F5),
              hintStyle: TextStyle(
                color: Color(0xFF666666),
                fontFamily: defaultFontFamily,
                fontSize: defaultFontSize,
              ),
              hintText: "Password",
            ),
          ),
          SizedBox(height: 28),
          Container(
            margin: EdgeInsets.only(left: 100, right: 100),
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                _dologin();
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Daftar(),
                          ),
                        )
                      },
                      child: Container(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Color(0xFFf7418c),
                            fontFamily: defaultFontFamily,
                            fontSize: defaultFontSize,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }

  _dologin() async {
    try {
      var Email = _emailController.text;
      var pass = _passwordController.text;
      var res = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: Email, password: pass);

      final snackBar = SnackBar(
        duration: const Duration(seconds: 5),
        content: Text("Login successfull"),
        backgroundColor: Colors.green,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return MainPage();
      }));
    } catch (e) {
      print('exception login');
      print(e.runtimeType);
      if (e is FirebaseAuthException) {
        print(e);
        print(e.message);
      }
      final snackBar = SnackBar(
        duration: const Duration(seconds: 5),
        content: Text("Wrong email or password!!!"),
        backgroundColor: Colors.red,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
