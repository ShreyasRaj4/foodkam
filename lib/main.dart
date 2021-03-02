import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_kamp/Sign_Up.dart';
import 'home.dart';
import 'login.dart';
import 'main2.dart'; 

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: LoginPage(),
      home : StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (index,sncpshot){
          if(sncpshot.hasData){
            return NavBar();
          }
          return LoginPage();
        }
      )
    );
  }
}
