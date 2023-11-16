import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workshala/Auth%20Screens/LoginPage.dart';
import 'package:workshala/Utilities.dart';
import 'package:http/http.dart' as http;
import '../NavBar.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {


  final _emailController= TextEditingController();
  final _nameController= TextEditingController();
  // final _lastnameController= TextEditingController();
  final _passwordController= TextEditingController();
  final _confirmPasswordController= TextEditingController();
  final _numberController= TextEditingController();


  Future<void> signUp(String email, String password, String name, String number) async {
    const String apiUrl = 'https://workshala.onrender.com/signUp';
    final Map<String, dynamic> signUpData = {
        'email': email,
        'password': password,
        'name': name,
        'number': number,
      };


      try {
        final response = await http.post(
          Uri.parse(apiUrl),
          body: json.encode(signUpData),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        );

        // print(response.statusCode);

        if (response.statusCode == 201) {
          final Map<String, dynamic> responseData = json.decode(response.body);
          final message = responseData['message'];
          print('Message from API: $message');
          // Update UI to show success message or navigate to another screen
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(message),
              duration: const Duration(seconds: 3),
            ),
          );
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
        }
        else {
          final Map<String, dynamic> responseData = json.decode(response.body);
          final message = responseData['message'];
          // Failed sign-up
          print('Failed to sign up: ${response.statusCode}');
          ScaffoldMessenger.of(context).showSnackBar(
             SnackBar(
              content: Text(message),
              duration: const Duration(seconds: 3),
            ),
          );
          // Handle error cases
        }
      } catch (error) {
        // Error during the HTTP request
        print('Error during sign-up: $error');
        // Update UI to show an error message
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('An error occurred. Please try again later.'),
            duration: Duration(seconds: 3),
          ),
        );
      }
  }


  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child:Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),

            child: Column(
              children: [

                Image.asset(
                  'assets/Layer 1.png',
                  scale: 7,
                ),


                SizedBox(height: size.height*0.025,),

                Image.asset('assets/WORKSHALA.png', scale: 5,),

                SizedBox(height: size.height*0.03,),


                // first name form field block
                TextformfieldSignup(_nameController,
                  'Name', false
                ),
                SizedBox(height: size.height*0.025,),


                //last name form field block
                // TextformfieldSignup(_lastnameController,
                //   'Last Name', false
                // ),
                // SizedBox(height: size.height*0.025,),


                //email form field block
                TextformfieldSignup(_emailController,
                  'Email', false
                ),
                SizedBox(height: size.height*0.025,),



            //Mobile number form field block
                Container(
              decoration: const BoxDecoration(
                boxShadow:[
                  BoxShadow(
                    color: Color(0xFFE6E6FA),
                    blurRadius: 5,
                    offset: const Offset(0, 7),

                  ),
                ],
              ),
              child: TextFormField(
                controller: _numberController,
                obscureText: false,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10),
                ],
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  hintText: 'Mobile Number',
                  filled: true,
                  fillColor: Color(0xFFEEEEEE),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xff946CC3),
                      width: 2,
                    ),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                        color: Color(0xFFEEEEEE)
                    ),
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ),
                SizedBox(height: size.height*0.025,),




                //password form field block
                TextformfieldSignup(_passwordController,
                  'Password', true
                ),
                SizedBox(height: size.height*0.025,),


                //confirm password form field block
                TextformfieldSignup(_confirmPasswordController,
                  'Confirm Password', true
                ),
                SizedBox(height: size.height*0.025,),




                Container(
                  margin: EdgeInsets.all(20.0),
                  child:ElevatedButton(
                    onPressed: (){
                      if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
                        // Show an error message or handle the case where either email or password is empty
                        print('Enter all the details');
                        showSnackBar('Please enter all the details');
                      } else {
                        signUp(
                          _emailController.text,
                          _passwordController.text,
                          _nameController.text,
                          _numberController.text,
                        );
                        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NavBar()));
                      }
                    },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        primary: Color(0xFF946CC3),
                        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),

                      ),
                      child: const Center(
                        child:Text('Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                  ),
                ),


                SizedBox(height: size.height*0.01,),

                //back to login
                endStatement('If you already registered', 'Log In', context, LoginPage()),
              ],
            ),
          ),
        ),
      ),



    );
  }
}
