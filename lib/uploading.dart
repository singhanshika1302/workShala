import 'package:flutter/material.dart';
import 'package:workshala/upload.dart';
import 'package:workshala/uploaded.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class uploading extends StatefulWidget {
  const uploading({super.key});

  @override
  State<uploading> createState() => _uploadingState();
}

class _uploadingState extends State<uploading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(


          child: Column(
            children: [
              SizedBox(height:70.0),
              Row(
                children: [

                  IconButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)
                      {
                        return upload();

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
                    SizedBox(height:10.0),
                    Text('UI/UX Designer',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),),
                    SizedBox(height: 10.0),
                    Text('Google LLC',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),),

                    SizedBox(height: 20.0),

                    Text('California,United States',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),),
                    SizedBox(height: 20.0),
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
                          SizedBox(width:20.0),
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
                    SizedBox(height: 30.0),
                    Text(
                      'Posted 10 Days ago,ends in 25 Dec.',
                      style: TextStyle(color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child:Container(

                  height: 300,
                  width: 500,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(
                      color: Colors.blueAccent,
                      width: 3,
                    ),
                  ),
                  child:Center(


                    child:LoadingAnimationWidget.stretchedDots(
                      color: Colors.blue,
                      size: 100,


                    ),


                  ),












                ),
              ),
              SizedBox(height:20.0),
              Text('Uploading...',
                style: TextStyle(color: Colors.blue,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),),
              SizedBox(height: 30.0),


              ElevatedButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)
                  {
                    return uploaded();

                  },
                  ),
                  );
                },
                child: Text('Cancel',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                  primary: Color(0xFF946CC3),
                  padding: EdgeInsets.fromLTRB(50.0, 15.0, 50.0, 15.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
