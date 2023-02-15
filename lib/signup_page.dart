import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'package:sizer/sizer.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(r'lib\media\background.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: BackButton(color: Colors.white),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(r'lib\media\appbar.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          body:
              // ignore: prefer_const_constructors
              Column(children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.center,
              // padding: const EdgeInsets.all(10),
              child: const Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              // alignment: Alignment.bottomCenter,
              child: Container(
                width: 280,
                height: 400,
                // alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      // ignore: prefer_const_constructors
                      BoxShadow(
                          blurRadius: 25.0,
                          color: Color.fromRGBO(0, 0, 0, 0.25)),
                    ]),

                child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Email",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(192, 238, 242, 1)),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: const TextField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon:
                                      Icon(Icons.email, color: Colors.black),
                                  hintText: 'Email',
                                  hintStyle: TextStyle(color: Colors.black)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Password',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(192, 238, 242, 1)),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: const TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                ),
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Confirm Password',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(192, 238, 242, 1)),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: const TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                ),
                                hintText: 'Confirm Password',
                                hintStyle: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpPage()),
                            ),
                            child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                ),
                                child: const Center(
                                  child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text("Submit",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  88, 198, 227, 1),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold))),
                                )),
                          )
                        ],
                      ),
                    )),
              ),
            ),
          ])),
    );
  }
}


// import 'package:flutter/material.dart';

// class SignUpPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign Up'),

//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: 'Name',
//                 hintText: 'Enter your name',
//               ),
//             ),
//             SizedBox(height: 16.0),
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 hintText: 'Enter your email',
//               ),
//             ),
//             SizedBox(height: 16.0),
//             TextFormField(
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 hintText: 'Enter your password',
//               ),
//             ),
//             SizedBox(height: 16.0),
//             TextFormField(
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Confirm Password',
//                 hintText: 'Enter your password again',
//               ),
//             ),
//             SizedBox(height: 32.0),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {
//                   // TODO: Implement sign up functionality
//                 },
//                 child: Text('Sign Up'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
