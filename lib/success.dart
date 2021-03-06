import 'package:flutter/material.dart';
import 'package:paymentallconnect/carddetails.dart';
import 'package:paymentallconnect/checkoutorder.dart';
import 'package:paymentallconnect/fail.dart';
import 'package:paymentallconnect/receipt.dart';

class SucessPayment extends StatefulWidget {
  const SucessPayment({Key? key}) : super(key: key);

  @override
  State<SucessPayment> createState() => _SucessPaymentState();
}

Color themeColor = const Color(0xFF43D19E);

class _SucessPaymentState extends State<SucessPayment> {
  double screenWidth = 500;
  double screenHeight = 300;
  Color textColor = const Color(0xFF32567A);

  get height => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 213, 249),
      appBar: AppBar(
        title: Text('Payment Success'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(children: <Widget>[
          SizedBox(height: 20),
          Container(
            height: 70,
            padding: const EdgeInsets.only(left: 480.0, bottom: 100.0),
            decoration: BoxDecoration(
              color: themeColor,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(height: screenHeight * 0.09),
          Text(
            "Thank You!",
            style: TextStyle(
              color: themeColor,
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
          ),
          SizedBox(height: screenHeight * 0.01),
          Text(
            "Payment done Successfully",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w400,
              fontSize: 17,
            ),
          ),
          SizedBox(height: screenHeight * 0.05),
          Divider(color: Colors.black),
          Card(
            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.pinkAccent,
            child: SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Text(
                                'Sub Total    ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Text(
                              'Dilivery Fee',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Discount    ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Total           ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Column(
                          children: [
                            Text(
                              'Rs.25,000',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '-',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '-',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Rs. 25,000',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(color: Colors.black),
          SizedBox(height: screenHeight * 0.05),
          Text(
            " Get more offers by giving rating and comments to service providers.",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w400,
              fontSize: 17,
            ),
          ),
          SizedBox(height: 20),
          ButtonBar(
            children: [
              RaisedButton(
                  child: Text("Add Comments"),
                  textColor: Colors.white,
                  color: Colors.purple,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => checkoutorder()),
                    );
                  })
            ],
          ),
        ]),
      ),
    );
  }
}
