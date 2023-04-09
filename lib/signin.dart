
import 'package:flutter/material.dart';
import 'package:giris/utils/colors.dart';
import 'package:giris/utils/login.dart';
import 'resuable_widget/resuable.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController= TextEditingController();
  TextEditingController _emailTextController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(
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
                end: Alignment.bottomCenter,


              )
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  20, MediaQuery.of(context).size.height * 0.08, 20, 0),
              child: Column(
                children: <Widget>[
                  logoWidget("assets/oua_logo.png"),
                  SizedBox(
                    height:10,
                  ),
                  resuableTextField("Enter Email",Icons.person_outline,false,
                   _emailTextController),
                  SizedBox(
                    height:10,
                  ),
                  resuableTextField("Enter password",Icons.lock_outline,false,
                      _passwordTextController),
                  SizedBox(
                    height: 20,
                  ),
                  signInButton(context,true,(){}),
                ],

              ),
            ),
          ),

        )

    );
  }
}







