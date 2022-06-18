import 'package:cloud_firestore/cloud_firestore.dart';
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
  var _date = DateTime.now().toString();
  TextEditingController _NameOnCard = new TextEditingController();
  TextEditingController _CardNumber = new TextEditingController();
  TextEditingController _Amount = new TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool status = false;

  var child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 213, 249),
      appBar: AppBar(
        title: Text('Card Details'),
        centerTitle: true,
        backgroundColor: Colors.purple,
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
                controller: _NameOnCard,
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Name on Card',
                )),
            TextField(
                controller: _CardNumber,
                decoration: InputDecoration(
                  icon: Icon(Icons.format_list_numbered_rtl_outlined),
                  labelText: 'Card Number',
                )),
            TextField(
                controller: _Amount,
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
                  color: Colors.purple,
                  onPressed: () {
                    final nameOnCard = _NameOnCard.text;
                    final cardNumber = _CardNumber.text;
                    final amount = _Amount.text;
                    final Date = _date;

                    cardpayment(
                      NameOnCard: nameOnCard,
                      CardNumber: cardNumber,
                      Amount: amount,
                      Date: Date,
                    );
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

  Future cardpayment(
      {required String NameOnCard, CardNumber, Amount, Date}) async {
    final docUser = FirebaseFirestore.instance
        .collection('cardpayments')
        .doc('Card details');
    final json = {
      'nameOnCard': NameOnCard,
      'cardNumber': CardNumber,
      'Amount': Amount,
      'date': Date,
      // 'name': name,
      // 'age': 21,
      // 'birthday': DateTime(2001, 7, 28),
    };

    /// Create doc & write data to Firebase
    await docUser.set(json);
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
