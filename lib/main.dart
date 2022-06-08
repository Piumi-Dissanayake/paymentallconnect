import 'dart:js';

import 'package:flutter/material.dart';
import 'package:paymentallconnect/MainDrawer.dart';
import 'package:paymentallconnect/carddetails.dart';
import 'package:paymentallconnect/fail.dart';
import 'package:paymentallconnect/receipt.dart';
import 'package:paymentallconnect/success.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/receipt': (context) => Receipts(),
        '/carddetails': (context) => CardDetails(),
        '/success': (context) => SucessPayment(),
        '/fail': (context) => FailedPayments(),
      },
    ));

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        centerTitle: true,
        backgroundColor: Color(0XFF128C7E),
      ),
      drawer: MainDrawer(),
    );
  }
}
