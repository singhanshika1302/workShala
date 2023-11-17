import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshala/upload.dart';
void main() {
  runApp(const job());
}



class job extends StatefulWidget {
  const job({super.key});

  @override
  State<job> createState() => _jobState();
}

class _jobState extends State<job> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height:30.0),
              Row(
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_back),
                  ),

                  SizedBox(width:255.0),
                  Image.asset(
                    'assets/dil.png',
                    height: 20.0,
                    width: 20.0,
                  ),
                  SizedBox(width:20.0),
                  Icon(Icons.share),
                ],
              ),

              SizedBox(height:30.0),
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

              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Text('Job Description',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),),
                      SizedBox(width:30.0),
                      Text('Minimum Qualifications',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),),
                      SizedBox(width:30.0),
                      Text('Perks and Benefits',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),),
                      SizedBox(width:30.0),
                      Text('Required Skills',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),),
                      SizedBox(width:30.0),
                      Text('About',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )

              ),
              Divider(color: Colors.black),
              SizedBox(height: 30.0),




              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 180.0, 20.0),
                child:Text(

                  'Job Description:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),),

              ),


              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 5.0, 50.0, 5.0),


                child:Text('Able to run design sprint to deliver the best user experience based on research.  '),

              ),

              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 5.0, 130.0, 5.0),
                child:Text('Able to lead a team,delegate and initiative'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 5.0, 50.0, 5.0),
                child:Text('Able to mold the junior designer to strategize how certain feature needs to be collected.'),

              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 5.0, 50.0, 5.0),
                child:Text('Able to aggregate and be data minded on the decision that is taking place.'),

              ),

              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 20.0, 100.0, 20.0),
                child:Text(

                  'Minimum Qualifications:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),),

              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5.0, 10.0, 105.0, 20.0),
                child:Text('Experience as UI/UX Designer for 2+ years. '),

              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15.0, 1.0, 100.0, 15.0),
                child:Text(' Ability to analyze and convert numerical design sprints into UI/UX'),

              ),

              Padding(
                padding: EdgeInsets.fromLTRB(5.0, 1.0, 130.0, 15.0),
                child:Text('Use platform Figma. Sketch, and Miro.  '),

              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 1.0, 100.0, 15.0),
                child:Text('Have experience in relevant B2C user centric products perviously.'),

              ),
              SizedBox(height: 30.0),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 155.0, 10.0),
                child: Text('Perks and Benefits:',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),),
              ),
              Row(
                children: [
                  SizedBox(width:25.0),
                  Image.asset('assets/medical.png',
                    height: 40.0,
                    width: 40.0,
                  ),
                  SizedBox(width:10.0),
                  Text('Medical/Health Insurance',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,

                    ),),
                ],
              ),

              Row(
                children:[

                  SizedBox(width:25.0),
                  Image.asset('assets/plans.png',
                    height: 30.0,
                    width: 40.0,
                  ),
                  SizedBox(width:10.0),
                  Text('Medical,Prescription or Vision Plans',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,

                    ),),
                ],
              ),
              Row(
                children:[

                  SizedBox(width:25.0),
                  Image.asset('assets/bonus.png',
                    height: 40.0,
                    width: 40.0,
                  ),
                  SizedBox(width:10.0),
                  Text('Performance Bonus',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,

                    ),),
                ],
              ),
              SizedBox(width: 20.0),
              Row(
                children:[

                  SizedBox(width:25.0),
                  Image.asset('assets/hear.jpeg',
                    height: 30.0,
                    width: 40.0,

                  ),

                  SizedBox(width:10.0),
                  Text('Paid Sick Leave',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,

                    ),),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children:[

                  SizedBox(width:25.0),
                  Image.asset('assets/paid.png',
                    height: 25.0,
                    width: 40.0,

                  ),

                  SizedBox(width:10.0),
                  Text('Paid Vacation Leave',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,

                    ),),
                ],
              ),
              SizedBox(height:10.0),
              Row(
                children:[

                  SizedBox(width:32.0),
                  Icon(Icons.location_on_rounded,

                    color: Colors.blue,
                  ),

                  SizedBox(width:10.0),
                  Text('Transportation Allowances',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,

                    ),),
                ],
              ),

              SizedBox(height:20.0),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 200.0, 10.0),
                child:Text('Required Skills:',
                  style: TextStyle(color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),

                ),
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  SizedBox(width: 20.0),
                  OutlinedButton(


                    onPressed: (){},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide( color: Color(0xFF946CC3)),

                      shape: RoundedRectangleBorder(

                        borderRadius: BorderRadius.circular(10.0),

                      ),

                      padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                    ),





                    child: Text(
                      'Creative Thinking',
                      style: TextStyle(
                        color: Color(0xFF946CC3),
                      ),
                    ),

                  ),
                  SizedBox(width: 20.0),

                  OutlinedButton(



                    onPressed: (){},
                    style: OutlinedButton.styleFrom(


                      side: BorderSide( color: Color(0xFF946CC3)),

                      shape: RoundedRectangleBorder(

                        borderRadius: BorderRadius.circular(10.0),

                      ),

                      padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                    ),





                    child: Text(
                      'Figma',
                      style: TextStyle(
                        color: Color(0xFF946CC3),
                      ),
                    ),

                  ),
                ],
              ),


              SizedBox(height: 20.0),
              Row(
                children: [
                  SizedBox(width: 20.0),
                  OutlinedButton(


                    onPressed: (){},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide( color: Color(0xFF946CC3)),

                      shape: RoundedRectangleBorder(

                        borderRadius: BorderRadius.circular(10.0),

                      ),

                      padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                    ),





                    child: Text(
                      'Graphic Designing',
                      style: TextStyle(
                        color: Color(0xFF946CC3),
                      ),
                    ),

                  ),
                  SizedBox(width: 20.0),
                  OutlinedButton(


                    onPressed: (){},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide( color: Color(0xFF946CC3)),

                      shape: RoundedRectangleBorder(

                        borderRadius: BorderRadius.circular(10.0),

                      ),

                      padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                    ),





                    child: Text(
                      'UI/UX Design',
                      style: TextStyle(
                        color: Color(0xFF946CC3),
                      ),
                    ),

                  ),
                ],
              ),


              SizedBox(height: 20.0),

              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 290.0, 10.0),
                child:Text('About',
                  style: TextStyle(color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),

                ),
              ),
              Padding(padding: EdgeInsets.all(10.0),
                  child:Text('Google LLC is an American multinational technology company that focuses on search engine technology, online advertising, cloud computing.. computer software, quantum computing. e- commerce, artificial intelligence, and consumer electronics',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),)
              ),



              SizedBox(height: 20.0),
              ElevatedButton(

                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
                  {
                    return upload();
                  },
                  ),
                  );
                },
                child: Text('Apply',
                  style: TextStyle(


                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  primary: Color(0xFF946CC3),
                  padding: EdgeInsets.fromLTRB(160.0, 15.0,160.0, 15.0),
                ),
              ),
              SizedBox(height: 30.0),
            ],
          ),
        ),




    );
  }
}