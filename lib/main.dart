import 'package:flutter/material.dart';
import 'jobdescription.dart';
void main() {
  runApp(
      MaterialApp(home:const password())
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
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 50.0),
            Row(
              children: [
                IconButton(onPressed: (){

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
            SizedBox(height: 10.0),
            Text(
              'Please enter your e-mail address.you will receive an e-mail along with a link which can be used to reset your password',
              style: TextStyle(
                color: Colors.black,
              ),),
            SizedBox(height: 40.0),

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


            SizedBox(height:20.0),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
              {
                return job();
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
            SizedBox(height: 20.0),
            Center(
                child: Row(
                  children: [
                    SizedBox(width: 15.0),
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