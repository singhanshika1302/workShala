import 'package:flutter/material.dart';
import 'package:workshala/Auth%20Screens/SignUpPage.dart';
import 'package:workshala/HomePage.dart';
import 'package:workshala/NavBar.dart';


class AfterSpalsh extends StatefulWidget {
  const AfterSpalsh({super.key});

  @override
  State<AfterSpalsh> createState() => _AfterSpalshState();
}

class _AfterSpalshState extends State<AfterSpalsh> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body:SingleChildScrollView(
          child: Center(
            child: Column(
                children: [

                  // SizedBox(height: size.height*0.1,),

                  Container(
                    height: size.height*0.5,
                    width: size.width,

                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffded2ed), // Shadow color
                          offset: Offset(4, 4), // Horizontal and vertical offset
                          blurRadius: 25, // Shadow blur radius
                        ),
                      ],
                    ),

                    child: Image.asset('assets/Layer 1.png', scale: 4,),
                  ),

                  SizedBox(height: size.height*0.07,),

                  const Text('Welcome to',style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                  ),),

                  SizedBox(height: size.height*0.03,),


                  Image.asset('assets/WORKSHALA.png', scale: 4.5,),


                  SizedBox(height: size.height*0.06,),

                  Container(
                    height: size.height*0.013,
                    width: size.width*0.12,
                    decoration: BoxDecoration(
                      color: Color(0xff946CC3),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),

                  SizedBox(height: size.height*0.06,),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(
                      height: size.height*0.09,
                      width: size.width,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context)=> SignUpPage()));
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xff946CC3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0), // Adjust the border radius value
                          ),
                        ),
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white, // Text color
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: size.height*0.04,),
                ]
            ),
          ),
        ),
      ),
    );
  }
}