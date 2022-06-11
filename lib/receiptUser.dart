import 'package:flutter/material.dart';
import 'package:paymentallconnect/carddetails.dart';
import 'package:paymentallconnect/fail.dart';
import 'package:paymentallconnect/success.dart';
import 'package:paymentallconnect/MainDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:paymentallconnect/receipt.dart';

class receiptUser extends StatelessWidget {
  String Date,
      ServiceProviderName,
      UserName,
      VehicleFault,
      InspectionValue,
      Discount,
      Balance;

  receiptUser({
    required this.Date,
    required this.ServiceProviderName,
    required this.UserName,
    required this.VehicleFault,
    required this.InspectionValue,
    required this.Discount,
    required this.Balance,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receipt'),
        centerTitle: true,
        backgroundColor: Color(0XFF128C7E),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
            Text('Date : ${Date}'),
            Text('Service Provider Name : ${ServiceProviderName}'),
            Text('User Name : ${UserName}'),
            Text('Vehicle Fault : ${VehicleFault}'),
            SizedBox(
              height: 20,
            ),
            Text('Inspection Value : ${InspectionValue}'),
            Text('Discount : ${Discount}'),
            Text('Balance : ${Balance}'),
            SizedBox(height: 20),
            Divider(color: Colors.black),
            ButtonBar(
              children: [
                RaisedButton(
                  child: Text("Pay"),
                  textColor: Colors.white,
                  color: Colors.green,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => (CardDetails())),
                    );
                  },
                ),
              ],
            )
          ])),
    );
  }
}
