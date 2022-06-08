import 'package:flutter/material.dart';
import 'package:paymentallconnect/carddetails.dart';
import 'package:paymentallconnect/fail.dart';
import 'package:paymentallconnect/success.dart';
import 'package:paymentallconnect/MainDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:paymentallconnect/receiptUser.dart';

class Receipts extends StatefulWidget {
  const Receipts({Key? key}) : super(key: key);

  @override
  State<Receipts> createState() => _ReceiptsState();
}

class _ReceiptsState extends State<Receipts> {
  TextEditingController _Date = new TextEditingController();
  TextEditingController _ServiceProviderName = new TextEditingController();
  TextEditingController _UserName = new TextEditingController();
  TextEditingController _VehicleFault = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receipt Details'),
        centerTitle: true,
        backgroundColor: Color(0XFF128C7E),
      ),
      body: Scaffold(
          body: Column(
        children: [
          DateTimePicker(
            controller: _Date,
            initialValue: '',
            firstDate: DateTime(2000),
            lastDate: DateTime(2100),
            icon: Icon(Icons.calendar_today),
            dateLabelText: 'Expiration Date',
            onChanged: (val) => print(val),
            validator: (val) {
              print(val);
              return null;
            },
            onSaved: (val) => print(val),
          ),
          Padding(
              padding: const EdgeInsets.all(0.0),
              child: TextField(
                  controller: _ServiceProviderName,
                  decoration: InputDecoration(
                      icon: Icon(Icons.people),
                      labelText: ' Service Provider Name'))),
          Padding(
              padding: const EdgeInsets.all(0.0),
              child: TextField(
                  controller: _UserName,
                  decoration: InputDecoration(
                      icon: Icon(Icons.people), labelText: 'User name'))),
          Padding(
              padding: const EdgeInsets.all(0.0),
              child: TextField(
                  controller: _VehicleFault,
                  decoration: InputDecoration(
                      icon: Icon(Icons.description),
                      labelText: 'Vehicle Fault'))),
          SizedBox(
            height: 20,
          ),
          Divider(color: Colors.black),
          SizedBox(
            height: 20,
          ),
          ButtonBar(
            children: [
              RaisedButton(
                child: Text("Send Details"),
                textColor: Colors.white,
                color: Colors.green,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => receiptUser(
                          Date: _Date.text,
                          ServiceProviderName: _ServiceProviderName.text,
                          UserName: _UserName.text,
                          VehicleFault: _VehicleFault.text)));
                },
              ),
            ],
          )
        ],
      )),
    );
  }
}
