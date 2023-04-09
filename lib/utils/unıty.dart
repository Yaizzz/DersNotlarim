import 'package:flutter/material.dart';
import 'colors.dart';
class UnityScreen extends StatefulWidget {
  const UnityScreen({Key? key}) : super(key: key);
  @override
  _UnityScreenState createState() => _UnityScreenState();

}

class _UnityScreenState extends State<UnityScreen> {
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
          child: Padding(
      padding: EdgeInsets.fromLTRB(0,10,0,0),
      child: Column(
      children: <Widget>[
      Container(
      color: Colors.black,
      height:800,
      width: 1000,

      child: ElevatedButton(
      style: ElevatedButton.styleFrom(
      primary: Colors.black12,
      elevation:10,
      ),
      onPressed: () {},
      child: Image.network(
      'https://st.depositphotos.com/2885805/3842/v/450/depositphotos_38422667-stock-illustration-coming-soon-message-illuminated-with.jpg',
      ),
      ),
      ),
      ],
      ),
      ),
      ),
        ),
      );
    }
  }

