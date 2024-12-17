import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.white,titleTextStyle:TextStyle(color: Colors.black) ),
        primarySwatch: Colors.blue,
      ),
      initialRoute: GetRoutes.login,
      getPages: GetRoutes.routes,
    );
  }
}
