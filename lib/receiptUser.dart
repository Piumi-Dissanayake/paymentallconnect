import 'package:flutter/material.dart';
import 'package:paymentallconnect/carddetails.dart';
import 'package:paymentallconnect/fail.dart';
import 'package:paymentallconnect/success.dart';
import 'package:paymentallconnect/MainDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:paymentallconnect/receipt.dart';

class receiptUser extends StatelessWidget {
  String ServiceProviderName,
      UserName,
      VehicleFault,
      InspectionValue,
      Discount,
      Balance;

  receiptUser({
    // required this.Date,
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
        body: Center(
      child: Column(
        children: [
          //Text('Date : ${Date}'),
          Text('Service Provider Name : ${ServiceProviderName}'),
          Text('User Name : ${UserName}'),
          Text('Vehicle Fault : ${VehicleFault}'),
          Text('Inspection Value : ${InspectionValue}'),
          Text('Discount : ${Discount}'),
          Text('Balance : ${Balance}'),
        ],
      ),
    ));
  }
}
