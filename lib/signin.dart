import 'package:flutter/material.dart';
import 'package:signup/signup.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
              child: Text('Sign In'),
              onPressed: () {},
              padding: EdgeInsets.all(20.0),
              borderSide: BorderSide(color: Colors.purple),
            ),
            SizedBox(height: 4.0),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Text('Do not have account?'),
              FlatButton(
                child: Text('Sign Up'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
              )
            ])
          ],
        ),
      ),
    );
  }
}
