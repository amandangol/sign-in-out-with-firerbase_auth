import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sigin_out_withflutter/screens/homescreen.dart';
import 'package:sigin_out_withflutter/screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Email & Password Authentication",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: LoginScreen(),
    );
  }
}
