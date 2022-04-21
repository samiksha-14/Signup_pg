import 'package:flutter/material.dart';
import 'package:my_newapp/Pages/sign_pg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //const MyApp({required Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Lora'),
      routes: {
        "/": (context) => const SignUp(),
        "/signup": (context) => const SignUp()
      },
    );
  }
}
