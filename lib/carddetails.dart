import 'package:flutter/material.dart';
import 'package:paymentallconnect/fail.dart';
import 'package:paymentallconnect/receipt.dart';
import 'package:paymentallconnect/success.dart';
import 'package:paymentallconnect/MainDrawer.dart';
import 'package:date_time_picker/date_time_picker.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool status = false;

  var child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Details'),
        centerTitle: true,
        backgroundColor: Color(0XFF128C7E),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Row(
              children: [
                Checkbox(
                  value: status,
                  onChanged: (value) {
                    setState(() {
                      status = value!;
                    });
                  },
                  activeColor: Colors.white,
                  checkColor: Colors.green,
                ),
                Text("Visa"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: status,
                  onChanged: (value) {
                    setState(() {
                      status = value!;
                    });
                  },
                  activeColor: Colors.white,
                  checkColor: Colors.green,
                ),
                Text("Master Card"),
              ],
            ),
            TextField(
                decoration: InputDecoration(
              icon: Icon(Icons.person),
              labelText: 'Name on Card',
            )),
            TextField(
                decoration: InputDecoration(
              icon: Icon(Icons.format_list_numbered_rtl_outlined),
              labelText: 'Card Number',
            )),
            TextField(
                decoration: InputDecoration(
              icon: Icon(Icons.money),
              labelText: 'Amount',
            )),
            DateTimePicker(
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
                      MaterialPageRoute(builder: (context) => SucessPayment()),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  onItemClicked(CheckBoxModel ckbItem) {
    setState(() {
      ckbItem.value = !ckbItem.value;
    });
  }
}

class CheckBoxModel {
  String title;
  bool value;

  CheckBoxModel({required this.title, this.value = false});
}
