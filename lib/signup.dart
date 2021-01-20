import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                height: 50.0,
                color: Colors.white,
                child: Text(
                  'Create account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                )),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'First name',
                    hintText: 'Eg., Jitesh',
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Last name',
                  hintText: 'Eg., Acharya',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'User Email',
                    hintText: 'Eg., abcde@gmail.com',
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your secure password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Phone number',
                  hintText: 'Eg., 9090909090',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              height: 50.0,
              width: double.infinity,
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20.0)),
              child: FlatButton(
                  child: Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  onPressed: _navigateToLogin),
            )
          ],
        ),
      ),
    );
  }

  _navigateToLogin() {
    Navigator.pop(context);
  }
}
