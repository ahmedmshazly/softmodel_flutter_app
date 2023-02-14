import 'package:flutter/material.dart';
import 'signup_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100.0),
              const Text(
                'Welcome back!',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Sign in to continue',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 40.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                ),
              ),
              const SizedBox(height: 32.0),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {
                      if (value == true) {
                        value = false;
                      } else {
                        value = true;
                      }
                    },
                  ),
                  const Text(
                    'Remember me',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const Spacer(), // Beteween the remmber me and the forgot pass
                  GestureDetector(
                    // we need to discover this more
                    onTap: () {},
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ), // End of the row
              const SizedBox(
                height: 32.0,
              ),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
