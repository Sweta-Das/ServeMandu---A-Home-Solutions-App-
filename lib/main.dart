
import 'dart:async';
import 'package:flutter/material.dart';
import 'screens/homepage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: ServeMandu()))};

class ServeMandu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppLogo(),
    );
  }
}

class AppLogo extends StatefulWidget{
  @override
  _AppLogoState createState()=> _AppLogoState();
}

class _AppLogoState extends State<AppLogo>{
  @override
  void initState(){
    Timer(
        Duration(
        seconds: 3,
      ),
            (){
        Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context)=> HomePage(),
        ));
      }
    );

        super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/Logo.png"),
                radius: 80.0,
              ),
            ),

            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Text("ServeMandu",
                  style: TextStyle(color: Colors.blu eGrey, fontSize: 40.0)),
            ),
          ],
        ),
      ),
    );
  }
}

