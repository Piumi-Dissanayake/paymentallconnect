//import 'dart:js';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as http;

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:paymentallconnect/MainDrawer.dart';
import 'package:paymentallconnect/carddetails.dart';
import 'package:paymentallconnect/fail.dart';
import 'package:paymentallconnect/gateway.dart';
import 'package:paymentallconnect/receipt.dart';
import 'package:paymentallconnect/success.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Stripe.publishableKey =
      "pk_test_51JT7jkCTAUDjRNFVfafy4Gskx1KzUNk8nPj8T51zzCPE18fA17DOFO6MqSZVTCxhVCSWGwouDSe0yjcObAznHLW600VBoGyDcg";
  await Stripe.instance.applySettings();

  await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomeScreen(),
      '/receipt': (context) => Receipts(),
      // '/carddetails': (context) => CardDetails(),
      '/success': (context) => SucessPayment(),
      '/fail': (context) => FailedPayments(),
      '/gateway': (context) => Gateway()
    },
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 213, 249),
      appBar: AppBar(
        title: Text('HomePage'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      drawer: MainDrawer(),
    );
  }
}
