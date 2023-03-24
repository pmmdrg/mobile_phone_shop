import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_shop_app/pages/home/main_page.dart';
import 'package:mobile_shop_app/phone/popular_phone_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PopularPhoneDetail(),
    );
  }
}