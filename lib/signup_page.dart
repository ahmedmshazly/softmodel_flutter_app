import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter your name',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                hintText: 'Enter your password again',
              ),
            ),
            SizedBox(height: 32.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement sign up functionality
                },
                child: Text('Sign Up'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
