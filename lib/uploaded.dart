import 'package:flutter/material.dart';
import 'package:workshala/uploading.dart';

class uploaded extends StatefulWidget {
  const uploaded({super.key});

  @override
  State<uploaded> createState() => _uploadedState();
}

class _uploadedState extends State<uploaded> {
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(


          child: Column(
            children: [
              SizedBox(height:size.height*0.07),
              Row(
                children: [

                  IconButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)
                      {
                        return uploading();

                      },
                      ),
                      );
                    },
                    icon: Icon(Icons.arrow_back),
                  ),

                  SizedBox(width:10.0),
                  Text('Details',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                    ),),
                ],
              ),
              Container(
                padding: EdgeInsets.all(60.0),
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: Color(0xFFE6E6FA)),
                  color: Color(0xFFF5F1F9),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/goog.png',
                      height: 60.0,
                      width: 60.0,
                    ),
                    SizedBox(height:size.height*0.025),
                    Text('UI/UX Designer',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),),
                    SizedBox(height:size.height*0.015),
                    Text('Google LLC',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),),

                    SizedBox(height: size.height*0.003),

                    Text('California,United States',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),),
                    SizedBox(height:size.height*0.03),
                    Text('\$10,000-\$25,000/month',
                      style: TextStyle(
                        color: Color(0xFF946CC3),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),),
                    Container(
                      padding: EdgeInsets.all(20.0),

                      child:Row(
                        children: [
                          Container(


                            decoration: BoxDecoration(
                              color: Color(0xFFD0BDE4),
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(color: Color(0xFFD0BDE4)),
                            ),
                            padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                            child: Text(
                              'Full Time',
                              style: TextStyle(
                                color: Color(0xFF946CC3),
                              ),
                            ),
                          ),
                          SizedBox(width:size.width*0.04),
                          Container(
                            padding: EdgeInsets.fromLTRB(25.0, 5.0, 23.0, 5.0),
                            decoration: BoxDecoration(
                              color: Color(0xFFD0BDE4),
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(color: Color(0xFFD7BFDC)),


                            ),
                            child: Text(
                              'Onsite',
                              style: TextStyle(
                                color: Color(0xFF946CC3),
                              ),
                            ),
                          ),
                        ],

                      ),

                    ),
                    SizedBox(height:size.height*0.02),
                    Text(
                      'Posted 10 Days ago,ends in 25 Dec.',
                      style: TextStyle(color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),

                  ],
                ),
              ),
              Image.asset('assets/cv.png',
              ),
              SizedBox(height:size.height*0.03),

              Text('Successful',
                style: TextStyle(color: Colors.blue,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(25.0),
                child:Text('You have successfully applied to this internship.'
                    'you can see the status in the “applications” section.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),),
              ),
              ElevatedButton(
                onPressed: (){},
                child: Text('My Applications',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),

                  primary: Color(0xFF946CC3),
                  padding: EdgeInsets.fromLTRB(110.0, 15.0, 110.0, 15.0),
                ),
              ),
              SizedBox(height: size.height*0.02),
              OutlinedButton(

                onPressed: (){},

                child: Text('Discover More',
                  style: TextStyle(
                    color: Color(0xFF946CC3),
                    fontSize: 15.0,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),

                  ),
                  side: BorderSide(width: 3.0, color: Color(0xFF946CC3)),

                  primary: Color(0xFF946CC3),
                  padding: EdgeInsets.fromLTRB(110.0, 15.0, 110.0, 15.0),
                ),
              ),
              SizedBox(height: size.height*0.02,),
            ],
          ),
        ),
      ),
    );
  }
}
