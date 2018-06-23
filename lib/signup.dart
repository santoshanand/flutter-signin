import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24.0),
        child: ListView(
          children: <Widget>[
            Text(
              'S',
              style: TextStyle(
                  fontSize: 140.0,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40.0,
            ),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10.0),
            TextField(
              maxLines: 1,
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 10.0),
            OutlineButton(
              child: Text('Sign Up'),
              onPressed: () {},
              padding: EdgeInsets.all(20.0),
              borderSide: BorderSide(color: Colors.purple),
            ),
            SizedBox(height: 4.0),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Text('Already have an account?'),
              FlatButton(
                child: Text('Sign In'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ])
          ],
        ),
      ),
    );
  }
}
