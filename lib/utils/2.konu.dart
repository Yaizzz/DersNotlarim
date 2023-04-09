import 'package:flutter/material.dart';
import 'colors.dart';
import 'yazilar.dart';

class FonksiyonScreen extends StatefulWidget {
  const FonksiyonScreen({Key? key}) : super(key: key);

  @override
  State<FonksiyonScreen> createState() => _FonksiyonScreenState();
}

class _FonksiyonScreenState extends State<FonksiyonScreen> {
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
          gradient: LinearGradient(colors: [
            hexStringToColor("132a33"),
            hexStringToColor("355389"),
            hexStringToColor("1b1e47"),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: SingleChildScrollView(
          child: Text(flutterDegislenler,
          style: TextStyle(
            fontSize: 20,
            height: 1.5,
            color: Colors.white54,
          ),),
        ),
      ),
    );
  }
}
