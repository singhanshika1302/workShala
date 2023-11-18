import 'package:flutter/material.dart';
import 'package:workshala/screens/screens_Anshika/CoursesPage.dart';
import 'package:workshala/screens/screens_srishti/HomePage.dart';
import 'package:workshala/screens/screens_Anshika/JobsPage.dart';
import 'package:workshala/screens/screens_srishti/ProfilePage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _AppAfterLoginState();
}

class _AppAfterLoginState extends State<NavBar> {

  int currentIndex = 0;

  final screens = const [
    HomePage(),
    CoursesPage(),
    JobsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;

    return Scaffold(

      body: SafeArea(
          child: screens[currentIndex]),


    bottomNavigationBar: Container(
                    decoration: BoxDecoration(
                    color: Color(0xff946CC3),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color: Colors.black.withOpacity(.1),
                      )
                     ],
                    ),

          child: SafeArea(
             child: Padding(
               padding: const EdgeInsets.all(10),
               child: GNav(
                 gap: 8,
                 activeColor: Colors.black,
                 iconSize: 26,
                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                 duration: Duration(milliseconds: 400),
                 tabBackgroundColor:Colors.white ,
                 color: Colors.white,
                 tabs:  const [
                   GButton(
                     icon: Icons.home_outlined,
                     text: 'Home',
                   ),
                   GButton(
                     icon: Icons.table_view_sharp,
                     text: 'Courses',
                   ),
                   GButton(
                     icon: Icons.cases_outlined,
                     text: 'Jobs',
                   ),
                   GButton(
                     icon: Icons.account_circle_outlined,
                     text: 'Profile',
                   ),
                 ],
                 selectedIndex: currentIndex,
                 onTabChange: (index) {
                   setState(() {
                     currentIndex = index;
                   });
                   },
               ),
             ),
          ),
    ));
  }
}
