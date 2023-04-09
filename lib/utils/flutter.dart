import 'package:flutter/material.dart';
import 'package:giris/utils/1.konu.dart';
import 'package:giris/utils/2.konu.dart';
import 'package:giris/utils/3.konu.dart';
import 'colors.dart';

class FlutterScreen extends StatefulWidget {
  const FlutterScreen({Key? key}) : super(key: key);
  @override
  _FlutterScreenState createState() => _FlutterScreenState();

}

class _FlutterScreenState extends State<FlutterScreen> {

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
        child:SingleChildScrollView(
        child:Padding(
    padding:  const EdgeInsets.fromLTRB(0,50,0,30),
    child:Column(
    children: <Widget> [
    Container(
       color:Colors.black12,
       height:100,
      width:1000,
      child:
    ElevatedButton(
       style: ElevatedButton.styleFrom(
       backgroundColor: Colors.black12,
        elevation:3,
    ),
    onPressed: (){Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const BirincikonuScreen()));
  },
    child: const Text('FLUTTER TEMEL BİLGİLER',
    style: TextStyle(fontFamily:'Kalam'),
    ),

    ),
    ),
    Container(
    color:Colors.black12,
    height:100,
    width:1000,
    child:
    ElevatedButton(
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.black12,
    elevation:3,
    ),
    onPressed: (){Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const FonksiyonScreen()),
    );
    },
    child: const Text('DEĞİŞKENLER VE VERİ TİPLERİ',
        style: TextStyle(fontFamily:'Kalam'),
    ),
    ),
    ),
      Container(
        color:Colors.black12,
        height:100,
        width:1000,
        child:
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black12,
            elevation:3,
          ),
          onPressed: (){Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const UcuncuScreen()),
    );
    },
          child: const Text('FONKSİYONLAR',
            style: TextStyle(fontFamily:'Kalam'),
          ),
        ),
      ),
    ],

    ),
    ),
    ),),
    );
  }
}