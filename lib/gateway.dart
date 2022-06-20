//payment gateway

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:paymentallconnect/controller/payment_controller.dart';

class Gateway extends StatelessWidget {
  const Gateway({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stripe Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const PaymentPage(),
    );
  }
}

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /////////
    // Future<void> initPaymentSheet(context,
    //     {required String email, required int amount}) async {
    //   try {
    //     // 1. create payment intent on the server
    //     final response = await http.post(
    //         Uri.parse(
    //             'https://us-central1-stripe-checkout-flutter.cloudfunctions.net/stripePaymentIntentRequest'),
    //         body: {
    //           'email': email,
    //           'amount': amount.toString(),
    //         });

    //     final jsonResponse = jsonDecode(response.body);
    //     log(jsonResponse.toString());

    //     //2. initialize the payment sheet
    //     await Stripe.instance.initPaymentSheet(
    //       paymentSheetParameters: SetupPaymentSheetParameters(
    //         paymentIntentClientSecret: jsonResponse['paymentIntent'],
    //         merchantDisplayName: 'Flutter Stripe Store Demo',
    //         customerId: jsonResponse['customer'],
    //         customerEphemeralKeySecret: jsonResponse['ephemeralKey'],
    //         style: ThemeMode.light,
    //         testEnv: true,
    //         merchantCountryCode: 'SG',
    //       ),
    //     );

    //     await Stripe.instance.presentPaymentSheet();

    //     ScaffoldMessenger.of(context).showSnackBar(
    //       const SnackBar(content: Text('Payment completed!')),
    //     );
    //   } catch (e) {
    //     if (e is StripeException) {
    //       ScaffoldMessenger.of(context).showSnackBar(
    //         SnackBar(
    //           content: Text('Error from Stripe: ${e.error.localizedMessage}'),
    //         ),
    //       );
    //     } else {
    //       ScaffoldMessenger.of(context).showSnackBar(
    //         SnackBar(content: Text('Error: $e')),
    //       );
    //     }
    //   }
    // }

//
//
    final PaymentController controller = Get.put(PaymentController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Stripe Demo App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                controller.makePayment(amount: '5', currency: 'USD');
                ////////////////////////////
                // await initPaymentSheet(context,
                //     email: "example@gmail.com", amount: 200000);
                /////////////////////////
              },
              child: const Text(
                'Make Payment 2000 USD',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
