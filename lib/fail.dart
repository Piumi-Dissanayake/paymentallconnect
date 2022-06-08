import 'package:flutter/material.dart';
import 'package:paymentallconnect/receipt.dart';
import 'package:paymentallconnect/success.dart';
import 'package:paymentallconnect/carddetails.dart';
import 'package:paymentallconnect/MainDrawer.dart';

class FailedPayments extends StatefulWidget {
  const FailedPayments({Key? key}) : super(key: key);

  @override
  State<FailedPayments> createState() => _FailedPaymentsState();
}

class _FailedPaymentsState extends State<FailedPayments> {
  double screenWidth = 500;
  double screenHeight = 300;
  Color textColor = const Color(0xFF32567A);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Fail'),
        centerTitle: true,
        backgroundColor: Color(0XFF128C7E),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 70,
              padding: const EdgeInsets.only(left: 480.0, bottom: 100.0),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: screenHeight * 0.08),
            Text(
              "Payment Failed",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            Text(
              " Try Again. We can't process your payment. Please check your internet connection.",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w400,
                fontSize: 17,
              ),
            ),

            SizedBox(height: screenHeight * 0.09),
            Divider(color: Colors.black),
            SizedBox(height: screenHeight * 0.09),
            ButtonBar(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 480.0),
                  child: RaisedButton(
                      child: Text("   Try Again   "),
                      textColor: Colors.white,
                      color: Color((0XFF128C7E)),
                      onPressed: () {}),
                ),
              ],
            ), //Card
          ],
        ),
      ),
    );
  }
}
