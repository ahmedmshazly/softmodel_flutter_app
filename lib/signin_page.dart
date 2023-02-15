import 'package:flutter/material.dart';
import 'signup_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const  BoxDecoration(
        image:  DecorationImage(
          image: AssetImage("assets/images/background.jpeg"), 
          fit : BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar:AppBar(
          backgroundColor: Colors.blueGrey,
          title: Container(
            width: 50,
            child: Image.asset("/assets/images/logo.jpeg"),
          ),
        ),
      
        body:
        // ignore: prefer_const_constructors
        Column(
          children : [
            const SizedBox(height: 50,),
            Container( 
              alignment: Alignment.center,
              // padding: const EdgeInsets.all(10),
              child: const Text("Sign In",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
              ),
              
            ),
            const SizedBox(height: 70,),
            Center(
              
              // alignment: Alignment.bottomCenter,
              child: 
              Container(
            
                  width: 400,
                  height: 350,
                  // alignment: Alignment.center,
                  decoration:  BoxDecoration(
                
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      // ignore: prefer_const_constructors
                      BoxShadow(
                        blurRadius: 25.0,
                      ),
                    ]
                  ),
          
                  child:
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Email",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                 ),
                                 child: const TextField(
                                  style: TextStyle(
                                    color: Colors.black
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.email,
                                    color: Colors.black),
                                    hintText: 'Email',
                                    hintStyle: TextStyle(color: Colors.black)
                                  ),
                                  
                                 ),
                            ),
                            const SizedBox(height: 10,),
                            const Text(
                              'Passward',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black
                                ),
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
                            const SizedBox(height: 25,),
                            GestureDetector(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()),
                              
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                              child: const Center(
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    "Submit",
                                    style: TextStyle(
                                      color: Color.fromRGBO(88, 198, 227, 1),
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold
                                    )
                                  )),)
                            ),
                            )

                          ],
                        ),)


                      ),
                    ),
                
              ) ,

          ] 
          

        )
         
        
        
      ),
      
    );
  }
}
