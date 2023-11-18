import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

import 'package:workshala/screens/screens_Aditya/uploaded.dart';
import 'package:workshala/screens/screens_Aditya/uploading.dart';


class upload extends StatefulWidget {
  const upload({super.key});


  @override
  State<upload> createState() => _upload();

}
class _upload extends State<upload> {


  FilePickerResult? result;
  String? _fileName;
  PlatformFile? pickedFile;
  bool isLoading=false;
  File? filetoDisplay;
  void pickfile()async{
    try {
      setState(() {
        isLoading=true;
      });
      result=await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowedExtensions: ['png','pdf'],
        allowMultiple: false,
      );
      if(result!=null){
        _fileName=result!.files.first.name;
        pickedFile =  result!.files.first;
        filetoDisplay=File(pickedFile!.path.toString());
        print('File Name $_fileName');
      }

      setState(() {
        isLoading=false;
      });
    } catch(e){
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(


        child: Column(
          children: [
            SizedBox(height:70.0),
            Row(
              children: [

                IconButton(
                  onPressed: (){},
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
                  SizedBox(height: size.height*0.002),
                  Text(
                    'Posted 10 Days ago,ends in 25 Dec.',
                    style: TextStyle(color: Colors.black,
                      fontSize: 15.0,
                    ),
                  ),

                ],
              ),
            ),
            Center(
              child: isLoading?
              CircularProgressIndicator(): GestureDetector(
                child: Image.asset(
                  'assets/upload.png',
                  height: 80.0,
                  width: 80.0,
                ),
                onTap: () {
                  pickfile();
                },
              ),
            ),
            if(pickedFile != null)
              SizedBox(
                  child: Image.file(filetoDisplay!)
              ),
            Text('Upload Resume/CV',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.0,

              ),),
            SizedBox(height: size.height*0.025,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)
                {
                  return uploading();

                },
                ),
                );
              },
              child: Text('Apply',
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



    );
  }
}
