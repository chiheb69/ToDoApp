import 'package:flutter/material.dart';
import 'package:ToDoAppChiheb/Screens/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
Future<void> main() async {
  //Initialize the hive
  await Hive.initFlutter();

  //Open a Box
  var box = await Hive.openBox('mybox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
    );
  }
}

