import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  var data;

  @override
  void initState() async {
    CollectionReference _collectionRef =
        FirebaseFirestore.instance.collection('payments');
    QuerySnapshot querySnapshot = await _collectionRef.get();
    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();
    print(allData);
    setState(() {
      data = allData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
