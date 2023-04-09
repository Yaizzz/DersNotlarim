import 'package:flutter/material.dart';
import 'package:giris/utils/flutter.dart';
import 'package:giris/utils/un%C4%B1ty.dart';
import 'colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              hexStringToColor("132a33"),
              hexStringToColor("355389"),
              hexStringToColor("1b1e47"),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
    child: SingleChildScrollView(
    child: Padding(
    padding: EdgeInsets.fromLTRB(0, 50, 0, 30),
    child: Column(
    children: <Widget>[
    Container(
    color: Colors.black12,
    height: 300,
    width: 1000,
    child: ElevatedButton(
    style: ElevatedButton.styleFrom(
    primary: Colors.black12,
    elevation: 3,
    ),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => FlutterScreen()),
    );
    },
    child: Image.network(
    'https://www.materialize.pro/wp-content/uploads/2021/10/FLUTTER-scaled.jpg',
    ),
    ),
    ),
    Container(
    color: Colors.black12,
    height: 300,
    width: 1000,
    child: ElevatedButton(
    style: ElevatedButton.styleFrom(
    primary: Colors.black12,
    elevation: 3,
    ),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => UnityScreen()),
    );
    },
    child: Image.network(
    'https://unity.com/themes/contrib/unity_base/images/og.jpg',
    ),
    ),
    ),
    ],
    ),
    ),
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Flutter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video),
            label: 'Unity',
          ),
        ],
      ),
    );
  }
}
