import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/customer/customer_home.dart';
import 'pages/merchant/merchant_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
      routes: {
        '/welcome': (context) => const HomePage(),
        '/customerhome': (context) => const CustomerHome(),
        '/merchanthome': (context) => const MerchantHome(),
      },
    );
  }
}
