import 'package:flutter/material.dart';
import 'package:workshala/utils/Utilities.dart';
import 'NavBar.dart';
import 'ProfilePage.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool switchValue = false;
  bool switchValue1 = false;
  bool switchValue2 = false;
  String selectedValue='English';
  String selectedValue1='India';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black, // Set the border color
                            width: 2.0,
                          ),
                        ),
                        child: Image.asset('assets/Ellipse 1.png',scale: 3,)
                    ),

                    SizedBox(width: size.width*0.07,),

                    const Text('Vidita Singh',style: TextStyle(
                        fontSize: 30,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                SizedBox(height: size.height*0.04,),

                const Text('Settings',style: TextStyle(
                    color: Color(0xff946cc3),
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),),

                SizedBox(height: size.height*0.04,),

                SettingsOptions('assets/Vector (6).png', 'Account'),

                SizedBox(height: size.height*0.03,),

                const  Text('Edit Profile',style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                ),),

                SizedBox(height: size.height*0.03,),

                const Text('Change Password',style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                ),),

                SizedBox(height: size.height*0.03,),

                const Text('Privacy',style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                ),),

                SizedBox(height: size.height*0.04,),

                SettingsOptions('assets/Vector (7).png', 'Notification'),

                SizedBox(height: size.height*0.03,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Notification',style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                    ),),

                    Transform.scale(
                      scale: 1.3,
                      child: Switch(
                        value: switchValue,
                        onChanged: (value) {
                          setState(() {
                            switchValue = value;
                          });
                        },
                        inactiveThumbColor: Colors.black,
                        activeColor: Color(0xff946cc3),
                        activeTrackColor: Colors.grey,
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Updates',style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                    ),),

                    Transform.scale(
                      scale: 1.3,
                      child: Switch(
                        value: switchValue1,
                        onChanged: (value) {
                          setState(() {
                            switchValue1 = value;
                          });
                        },
                        inactiveThumbColor: Colors.black,
                        activeColor: Color(0xff946cc3),
                        activeTrackColor: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height*0.04,),

                SettingsOptions('assets/Vector (8).png', 'Other'),

                SizedBox(height: size.height*0.03,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Dark Mode',style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                    ),),

                    Transform.scale(
                      scale: 1.3,
                      child: Switch(
                        value: switchValue2,
                        onChanged: (value) {
                          setState(() {
                            switchValue2 = value;
                          });
                        },
                        inactiveThumbColor: Colors.black,
                        activeColor: Color(0xff946cc3),
                        activeTrackColor: Colors.grey,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: size.height*0.02,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Language',style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                    ),),

                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey
                          )
                      ),
                      height: size.height*0.03,
                      width: size.width*0.2,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                        child: DropdownButton<String>(
                          value: selectedValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          icon: const Icon(Icons.arrow_drop_down), // Add an icon if needed
                          iconSize: 0,
                          underline: SizedBox(),
                          alignment: Alignment.center,
                          items: <String>['English', 'Hindi', 'French', 'Spanish']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: size.height*0.03,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Region',style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                    ),),

                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey
                          )
                      ),
                      height: size.height*0.03,
                      width: size.width*0.2,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: DropdownButton<String>(
                          value: selectedValue1,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue1 = newValue!;
                            });
                          },
                          icon: const Icon(Icons.arrow_drop_down), // Add an icon if needed
                          iconSize: 0,
                          underline: SizedBox(),
                          alignment: Alignment.center,
                          items: <String>['India', 'USA', 'UK', 'China']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}