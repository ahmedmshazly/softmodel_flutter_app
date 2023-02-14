import 'package:flutter/material.dart';
import 'signin_page.dart';
import 'signup_page.dart';
// import './splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: "./",
      // routes: {
      //   '/': (context) => const SplashScreen(),
      //   '/home': (context) => const MyHomePage(
      //         title: "Test",
      //       )
      // },
      home: const MyHomePage(title: "Home"),
      title: 'SOFTModel',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: const Color(0xff1F202D),
              onPrimary: const Color(0xff58CAE7),
              secondary: const Color(0xff344D5E),
              onSecondary: const Color(0xff58CAE7),
              background: const Color(0xff344D5E)),
          textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Color(0xff1F202D)),
              bodyMedium: TextStyle(color: Color(0xff1F202D)),
              bodySmall: TextStyle(color: Color(0xff1F202D)))),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Home Page"),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(r'lib\media\homeback.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                  },
                  child: Text('Sign In'),
                ),
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  child: Text('Sign Up'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
