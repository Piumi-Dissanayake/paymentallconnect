import 'package:flutter/material.dart';
import 'package:paymentallconnect/carddetails.dart';
import 'package:paymentallconnect/fail.dart';
import 'package:paymentallconnect/receipt.dart';
import 'package:paymentallconnect/MainDrawer.dart';

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
      appBar: AppBar(
        title: Text('Payment Success'),
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
              color: Colors.yellow,
              child: SizedBox(
                width: 300,
                //height: height * 0.2,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ), //SizedBox
                      //SizedBox
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
                                  ), //Textstyle
                                ),
                              ),
                              Text(
                                'Dilivery Fee',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ), //Textstyle
                              ),
                              Text(
                                'Discount    ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.red,
                                ), //Textstyle
                              ),
                              Text(
                                'Total           ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.red,
                                ), //Textstyle
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
                                ), //Textstyle
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ), //Textstyle
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.red,
                                ), //Textstyle
                              ),
                              Text(
                                'Rs. 25,000',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.red,
                                ), //Textstyle
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ), //SizedBox
                    ],
                  ), //Column
                ), //Padding
              ), //SizedBox
            ), //Card
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
            SizedBox(height: screenHeight * 0.06),
            Card(
                elevation: 50,
                // shadowColor: Colors.black,
                color: Colors.grey,
                child: SizedBox(
                    width: 300,
                    height: 85,
                    //height: height * 0.2,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(children: [
                        SizedBox(
                          height: 10,
                        ), //SizedBox
                        //SizedBox
                        Row(
                          children: [
                            Column(children: [
                              Center(
                                child: Container(
                                  child: Text(
                                    '     Add Comments',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.blueGrey),
                                  ),
                                ),
                              )
                            ])
                          ],
                        )
                      ]),
                    ))),
            ButtonBar(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 480.0),
                  child: RaisedButton(
                      child: Text("   View Comments   "),
                      textColor: Colors.white,
                      color: Color((0XFF128C7E)),
                      onPressed: () {}),
                ),
              ],
            ), //Card
          ],
        ),
      ), //Column
    );
    //Padding
    //SizedBox
    //Card
  }
}
