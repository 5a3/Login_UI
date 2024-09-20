import 'package:flutter/material.dart';
import 'auth/login.dart';
import 'auth/signup.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'login': (context) => Login(),
        'Singup': (context) => Signup(),
        // 'Homepage': (context) => Homepage(),
        // 'AddNotes': (context) => AddNotes(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        textTheme:
            TextTheme(bodyLarge: TextStyle(fontSize: 13, color: Colors.blue)),
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}
