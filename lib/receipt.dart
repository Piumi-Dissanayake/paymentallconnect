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
  //TextEditingController _Date = new TextEditingController();
  var _date = DateTime.now().toString();
  TextEditingController _ServiceProviderName = new TextEditingController();
  TextEditingController _UserName = new TextEditingController();
  TextEditingController _VehicleFault = new TextEditingController();
  TextEditingController _Inspection = new TextEditingController();
  TextEditingController _Discount = new TextEditingController();
  TextEditingController _balance = new TextEditingController();

  double inspectionvalue = 0.0;

  double discountvalue = 0.0;

  double resultValue = 0.0;

  double balanceValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receipt Details'),
        centerTitle: true,
        backgroundColor: Color(0XFF128C7E),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        DateTimePicker(
          //controller: _Date,
          initialValue: DateTime.now().toString(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
          icon: Icon(Icons.calendar_today),
          dateLabelText: 'Expiration Date',
          onChanged: (val) {
            print(_date);
            setState(() {
              _date = val.toString().substring(0, 10);
            });
            print(_date);
          },
          validator: (val) {
            //print(val);
            return null;
          },
          onSaved: (val) {
            //rint(val);
            // setState(() {
            //   _date = val.toString().substring(0, 10);
            // });
          },
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
        Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextField(
                controller: _Inspection,
                decoration: InputDecoration(
                    icon: Icon(Icons.description),
                    labelText: 'Inspection Value'))),
        Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextField(
                controller: _Discount,
                decoration: InputDecoration(
                    icon: Icon(Icons.description), labelText: 'Discount'))),
        SizedBox(
          height: 20,
        ),
        Text("Balance = $balanceValue",
            style: TextStyle(
              fontSize: 20,
            )),
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
                inspectionvalue = double.parse(_Inspection.text);
                discountvalue = double.parse(_Discount.text);

                resultValue = balanceValue - (inspectionvalue - discountvalue);

                setState(() {
                  balanceValue = resultValue;
                });
                print("the selected date is ${_date}");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => receiptUser(
                          ServiceProviderName: _ServiceProviderName.text,
                          UserName: _UserName.text,
                          VehicleFault: _VehicleFault.text,
                          InspectionValue: _Inspection.text,
                          Discount: _Discount.text,
                          Balance: resultValue.toString(),
                          Date: _date,
                        )));
              },
            ),
          ],
        )
      ])),
    );
  }
}
