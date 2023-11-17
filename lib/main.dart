import 'package:flutter/material.dart';
import 'jobdescription.dart';
import 'package:workshala/signup.dart';
import 'package:workshala/login.dart';
void main() {
  runApp(
      MaterialApp(
        home:const password(),
      debugShowCheckedModeBanner: false,
      )
  );
}



class password extends StatefulWidget {
  const password({super.key});

  @override
  State<password> createState() => _passwordState();
}

class _passwordState extends State<password> {
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return  Scaffold(

        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: size.height*0.05),
              Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
                    {
                      return LoginPage();
                    },
                    ),
                    );

                  }, icon: Icon(Icons.arrow_back)),
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Color(0xFF946CC3),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(height: size.height*0.025,),
              Text(
                'Please enter your e-mail address.you will receive an e-mail along with a link which can be used to reset your password',
                style: TextStyle(
                  color: Colors.black,
                ),),
              SizedBox(height: size.height*0.05,),

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
                child:TextField(


                  decoration: InputDecoration(
                    enabledBorder:OutlineInputBorder(
                      borderSide: BorderSide(color:Color(0xFFEEEEEE)),

                    ),
                    border: OutlineInputBorder(

                    ),
                    hintText: 'Email ID',
                    hintStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Color(0xFFEEEEEE),
                  ),
                ),
              ),


              SizedBox(height:size.height*0.03),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
                {
                  return SignUpPage();
                },
                ),
                );
              },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  primary: Color(0xFF946CC3),
                  padding: EdgeInsets.fromLTRB(153.0, 15.0, 153.0, 15.0),
                ),

                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,

                    fontSize: 20.0,
                  ),),
              ),
              SizedBox(height: size.height*0.025,),
              Center(
                  child: Row(
                    children: [
                      SizedBox(width: size.width*0.05,),
                      Text('I am not receiving password reset email'),
                      TextButton(
                        onPressed: (){},
                        child: Text('Need help?',
                          style: TextStyle(
                            color: Color(0xFF946CC3),
                          ),
                        ),
                      )
                    ],
                  )
              )
            ],
          ),
        ),


    );
  }
}