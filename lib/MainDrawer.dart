import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Color(0XFF128C7C),
            child: Center(
              child: Column(
                children: [
                  Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(top: 30, bottom: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,

                        /*image: DecorationImage(
                            image: AssetImage('assets/avator.png'),
                            fit: BoxFit.fill),*/
                      )),
                  Text(
                    'Piumi',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    'Piumianu99@gmai.com',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(Icons.receipt),
            title: Text(
              'Receipts',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/receipt');
            },
          ),
          ListTile(
            leading: Icon(Icons.card_giftcard),
            title: Text(
              'Card Details',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/carddetails');
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text(
              'Payment Success',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/success');
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text(
              'Payment Failed',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/fail');
            },
          ),
        ],
      ),
    );
  }
}
