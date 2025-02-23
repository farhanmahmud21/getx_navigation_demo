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
  HomePage({super.key});
  CounterController counterController = Get.put(CounterController());

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
            child: Text('Goto CheckOut Page'),
          ),
          SizedBox(
            height: 40,
          ),
          Obx(
            () => Text(
              counterController.count.toString(),
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                counterController.increase();
              },
              child: Text('Increase Count'))
        ],
      )),
    );
  }
}

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int num = 0;

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
            child: Text('Go to Home'),
          ),
          Text(
            num.toString(),
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                setState(() {});
                num++;
              },
              child: Text('Increase'))
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

class CounterController extends GetxController {
  RxInt count = 0.obs;

  void increase() {
    count++;
  }
}
