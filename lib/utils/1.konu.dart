import 'package:flutter/material.dart';
import 'colors.dart';
import 'yazilar.dart';

class BirincikonuScreen extends StatefulWidget {
  const BirincikonuScreen({Key? key}) : super(key: key);

  @override
  State<BirincikonuScreen> createState() => _BirincikonuScreenState();
}

class _BirincikonuScreenState extends State<BirincikonuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                hexStringToColor("132a33"),
                hexStringToColor("355389"),
                hexStringToColor("1b1e47"),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
          ),
        ),
        child: SingleChildScrollView(
          child: Text(flutter_temel,
          style: TextStyle(
            fontSize: 20,
            height: 1.5,
            color: Colors.white54
          ),),
        ),
        ),
    );
  }
}