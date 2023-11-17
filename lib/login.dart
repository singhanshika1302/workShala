import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:workshala/Utilities.dart';
import 'signup.dart';



import 'package:http/http.dart' as http;
import 'package:workshala/jobdescription.dart';






class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool ?isChecked= false;
  final emailController = new TextEditingController();
  final passwordController = new TextEditingController();
  bool _isValidPassword(String password) {
    // Use a regex pattern for password validation
    // This example requires at least 6 characters, including an uppercase letter, a lowercase letter, and a number.
    RegExp regex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{6,}$');
    return regex.hasMatch(password);
  }


  Future<void> login(String email, String password ) async {
    try {
      Map<String, String> loginData = {
        'email': email,
        'password': password,
      };

      final response = await http.post(
        Uri.parse('https://workshala.onrender.com/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(loginData),
      );

      print(response.statusCode);

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final message = responseData['message'];

        print('Message from API: $message');

        // Now navigate to the next screen
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => job()));
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            duration: const Duration(seconds: 3),
          ),
        );

      } else {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final message = responseData['message'];

        print('Failed with status code: ${response.statusCode}');
        print('Response body: $message');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            duration: const Duration(seconds: 3),
          ),
        );
        // showSnackBar('Login failed. Please check your credentials.');
      }
    } catch (e) {
      print('Error: $e');
      showSnackBar('An unexpected error occurred.');
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
    final size= MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(

          child:Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Column(
              children:[

                Image.asset(
                  'assets/work.png',
                  scale: 3,
                ),


                SizedBox(height: size.height*0.025,),

                Image.asset('assets/WORKSHALA.png', scale: 5,),

                SizedBox(height: size.height*0.03,),

                const Text(
                  'Log in to your account',
                  style: TextStyle(
                    letterSpacing: 1,
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: size.height*0.03,),


                //email field block
                const Row(
                  children:[
                    SizedBox(width:10.0),
                    Text(
                      'Email ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                      ),),
                    Text(
                      '*',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height*0.01,),

                Container(

                  decoration: BoxDecoration(
                    boxShadow:[
                      BoxShadow(
                        color: Color(0xFFE6E6FA),
                        blurRadius: 5,
                        offset: const Offset(0, 7),

                      ),
                    ],
                  ),


                  child:TextFormField(

                      controller: emailController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value){
                        if(value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value!)){
                          return "Enter Correct Email Address";
                        }else{
                          return null;
                        }
                      },



                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8.0),
                        enabledBorder:OutlineInputBorder(
                          borderSide: BorderSide(color:Color(0xFFEEEEEE)),
                          borderRadius: BorderRadius.circular(10.0),

                        ),
                        border: OutlineInputBorder(


                        ),
                        hintText: 'Email',
                        fillColor: Color(0xFFEEEEEE),
                        filled: true,
                      )

                  ),

                ),
                SizedBox(height: size.height*0.03,),





                //password field block
                const Row(
                  children:[
                    SizedBox(width:10.0),
                    Text(
                      'Password ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                      ),),
                    Text(
                      '*',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height*0.01,),
                Container(

                  decoration: BoxDecoration(
                    boxShadow:[
                      BoxShadow(
                        color: Color(0xFFE6E6FA),
                        blurRadius: 5,
                        offset: const Offset(0, 7),

                      ),
                    ],
                  ),


                  child:TextFormField(
                      autofocus: false,
                      obscureText: true,
                      autovalidateMode: AutovalidateMode.onUserInteraction,


                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a password';
                        } else if (!_isValidPassword(value)) {
                          return 'Password must contain at least 8 characters.';
                        }
                        return null;
                      },


                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8.0),
                        enabledBorder:OutlineInputBorder(
                          borderSide: BorderSide(color:Color(0xFFEEEEEE)),
                          borderRadius: BorderRadius.circular(10.0),

                        ),
                        border: OutlineInputBorder(


                        ),
                        hintText: 'Password',
                        fillColor: Color(0xFFEEEEEE),
                        filled: true,
                      )

                  ),
                ),

                SizedBox(height: size.height*0.02,),
                Row(
                  children:[
                    Checkbox(
                      value: isChecked,
                      activeColor: Colors.black,
                      onChanged:(newBool){
                        setState(() {
                          isChecked = newBool;
                        });
                      },
                    ),



                    const Text(
                      'Remember me',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                      ),),
                  ],
                ),
                SizedBox(height: size.height*0.01,),



                ElevatedButton
                  (
                  onPressed: (){
                    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
                      // Show an error message or handle the case where either email or password is empty
                      print('Please enter both email and password');
                      showSnackBar('Login failed. Please check your credentials.');
                    } else {
                      login(
                        emailController.text,
                        passwordController.text,
                      );
                      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NavBar()));
                    }

                  },

                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    primary:Color(0xFF946CC3),
                    padding: EdgeInsets.all(15),

                  ),
                  child: const Center(
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),),

                  ),
                ),
                SizedBox(height: size.height*0.01,),


                //forgot password text button
                TextButton(
                  onPressed: (){},
                  child: const Text(
                    'Forgot the Password?',
                    style: TextStyle(color: Color(0xFF946CC3),
                      fontSize: 17.0,
                    ),

                  ),
                ),
                // SizedBox(height: size.height*0.01,),

                const Text(
                  'or continue with',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize:15.0,
                  ),),
                SizedBox(height: size.height*0.01,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Image.asset(
                        'assets/goog.png',
                        scale: 6,
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>job()));
                      },
                    ),
                    SizedBox(width: size.width*0.05,),
                    GestureDetector(
                      child: Image.asset(
                        'assets/git.png',
                        scale: 16,
                      ),
                      onTap: () {},
                    ),
                  ],


                ),
                SizedBox(height: size.height*0.005,),

                //back to Sign Up page
                endStatement("Don't have a account?", 'Sign Up', context, SignUpPage()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}