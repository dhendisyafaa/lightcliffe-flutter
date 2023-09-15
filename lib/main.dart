import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing_ui/pages/Homepage.dart';
import 'package:slicing_ui/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialRoute: "/",
        getPages: [
          GetPage(name: "/", page: () => MyApp()),
          GetPage(name: "/homepage", page: () => Homepage())
        ],
        debugShowCheckedModeBanner: false,
        title: 'Lightcliffe',
        home: SplashScreen());
  }
}
