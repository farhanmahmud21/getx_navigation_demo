import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.red,
        centerTitle: true,
        title: Text('HomePage'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.to(CartPage());
                //Get.off(CartPage());
                //Get.offAll(CartPage());
                //Get.back();
              },
              child: Text('Goto Cart Page')),
          ElevatedButton(
              onPressed: () {
                Get.to(CheckOutPage());
                //Get.off(CartPage());
                //Get.offAll(CartPage());
                //Get.back();
              },
              child: Text('Goto CheckOut Page')),
        ],
      )),
    );
  }
}

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.red,
        centerTitle: true,
        title: Text('CartPage'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Get.to(CheckOutPage());
              //Get.off(CartPage());
              //Get.offAll(CartPage());
              //Get.back();
            },
            child: Text('Goto CheckOut Page'),
          ),
          ElevatedButton(
              onPressed: () {
                Get.offAll(HomePage());
              },
              child: Text('Go to Home'))
        ],
      )),
    );
  }
}

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.red,
        centerTitle: true,
        title: Text('CheckOutPage'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Get.to(CartPage());
              //Get.off(CartPage());
              //Get.offAll(CartPage());
              //Get.back();
            },
            child: Text('Goto Cart Page'),
          ),
          ElevatedButton(
              onPressed: () {
                Get.offAll(HomePage());
              },
              child: Text('Go to Home'))
        ],
      )),
    );
  }
}
