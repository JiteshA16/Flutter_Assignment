import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: new Text(
          'My Home page',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 22.0),
        ),
      ),
      body: Center(
        child: Text('My Home'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Jitesh Acharya'),
              accountEmail: Text('jitesh.acharya@neosoftmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/swiftDemoImage.jpeg'),
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text('My Wallet'),
              leading: Icon(Icons.money_rounded),
            ),
            ListTile(
              title: Text('Redeem'),
              leading: Icon(Icons.money_off_rounded),
            ),
            ListTile(
              title: Text('Offers'),
              leading: Icon(Icons.local_offer),
            ),
            ListTile(
              title: Text('10+1 Plan'),
              leading: Icon(Icons.event),
            ),
            ListTile(
              title: Text('My Goldmine'),
              leading: Icon(Icons.money),
            ),
            ListTile(
              title: Text('FAQ'),
              leading: Icon(Icons.chat_bubble),
            ),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.exit_to_app),
            ),
          ],
        ),
      ),
    );
  }

  _navigateToHome() {
    Navigator.pop(context);
  }
}
