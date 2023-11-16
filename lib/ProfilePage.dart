import 'package:flutter/material.dart';
import 'package:workshala/Utilities.dart';
import 'NavBar.dart';
import 'Settings.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(height: size.height*0.03,),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black, // Set the border color
                          width: 2.0,
                        ),
                      ),

                      child: Image.asset('assets/Ellipse 1.png',scale: 1.9,),),
                  ),

                  SizedBox(width: size.width*0.05,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Vidita Singh',style: TextStyle(
                          fontSize: 26.5,
                          color: Color(0xff946cc3),
                          fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: size.height*0.01,),
                      const Text('India',style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),),
                      SizedBox(height: size.height*0.01,),

                      const Text('Since 2022',style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        fontWeight: FontWeight.w500
                      ),)
                    ],
                  ),
                ],
              ),


              SizedBox(height: size.height*0.03,),



              //wallet and courses block
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                height: size.height*0.13,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    //wallet block
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                      child: Column(
                        children: [
                          Text('Wallet',style: TextStyle(
                              color: Colors.black54,
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                          ),),

                          Text('\u0024 45.78',style: TextStyle(
                              color: Color(0XFF946cc3),
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),),
                        ],
                      ),
                    ),

                    VerticalDivider(
                      thickness: 2,
                      color: Colors.grey,
                    ),

                    //courses block
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 30, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Courses',style: TextStyle(
                              color: Colors.black54,
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                          ),),

                          Text('3 Active',style: TextStyle(
                              color: Color(0XFF946cc3),
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
                // color: Colors.red,
              ),


              SizedBox(height: size.height*0.04,),

              ProfileOptions('assets/Vector.png', size.width*0.08, 'Your Favorite'),

              SizedBox(height: size.height*0.04,),

              ProfileOptions('assets/Vector (1).png', size.width*0.08, 'Payment'),

              SizedBox(height: size.height*0.04,),

              ProfileOptions('assets/Vector (2).png',  size.width*0.08,'Tell Your Friends'),

              SizedBox(height: size.height*0.04,),

              ProfileOptions('assets/Vector (3).png', size.width*0.08, 'Promotions'),

              SizedBox(height: size.height*0.04,),

              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> Settings()));
                },
                  child: ProfileOptions('assets/Vector (4).png', size.width*0.08, 'Settings')),

              SizedBox(height: size.height*0.04,),

              ProfileOptions('assets/Vector (5).png', size.width*0.08, 'Log Out'),

              SizedBox(height: size.height*0.06,),



            ],
          ),
        ),
      ),
    );
  }
}