import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workshala/utils/checkbox.dart';
import 'package:workshala/utils/solidButton.dart';

class Filter_Page extends StatefulWidget {
  const Filter_Page({super.key});

  @override
  State<Filter_Page> createState() => _Filter_PageState();
}

class _Filter_PageState extends State<Filter_Page> {
  int selectedIndex = 0;
  PageController _pageController = PageController();
  List<String> tabTitles = [
    'Salary',
    'Gender',
    'Locations',
    'Working\n hours',
    'Type',
    'Field of \nWork',
    'Company',
    'Country',
    'Skills',
    'Experience',
  ]; // List of tab titles

  List<bool> selectedOptionsSalary = List.generate(6, (index) => false);
  List<bool> selectedOptionsGender = List.generate(3, (index) => false);
  List<bool> selectedOptionsLocations = List.generate(18, (index) => false);
  List<bool> selectedOptionsWorkingHrs = List.generate(4, (index) => false);
  List<bool> selectedOptionsType = List.generate(4, (index) => false);
  List<bool> selectedOptionsField = List.generate(14, (index) => false);
  List<bool> selectedOptionsCompany = List.generate(13, (index) => false);
  List<bool> selectedOptionsCountry = List.generate(5, (index) => false);
  List<bool> selectedOptionsSkills = List.generate(7, (index) => false);
  List<bool> selectedOptionsExperience = List.generate(6, (index) => false);

  void resetSelectedOptions(List<bool> selectedOp) {
    setState(() {
      for (int i = 0; i < selectedOp.length; i++) {
        selectedOp[i] = false;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.clear,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        title: Text(
          'Filters',
          style: GoogleFonts.inter(color: Colors.black , fontWeight: FontWeight.w700),
        ),
        actions: [
          TextButton(
            onPressed: () {
              if (selectedIndex == 0) {
                resetSelectedOptions(selectedOptionsSalary);
              } else if (selectedIndex == 1) {
                resetSelectedOptions(selectedOptionsGender);
              }
              else if (selectedIndex == 2) {
                resetSelectedOptions(selectedOptionsLocations);
              }
              else if (selectedIndex == 3) {
                resetSelectedOptions(selectedOptionsWorkingHrs);
              }
              else if (selectedIndex == 4) {
                resetSelectedOptions(selectedOptionsType);
                
              }
              else if (selectedIndex == 5) {
                resetSelectedOptions(selectedOptionsField);
              }
              else if (selectedIndex == 6) {
                resetSelectedOptions(selectedOptionsCompany);
              }
              else if (selectedIndex == 7) {
                resetSelectedOptions(selectedOptionsCountry);
              }
              else if (selectedIndex == 8) {
                resetSelectedOptions(selectedOptionsSkills);
              }
              else if (selectedIndex == 9) {
                resetSelectedOptions(selectedOptionsExperience);
              }
            },
            child: Text(
              'Clear filter',
              style: GoogleFonts.inter(color: Colors.blue),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 150,
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 1,
                      );
                    },
                    itemCount: tabTitles.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                            _pageController.jumpToPage(index);
                          });
                        },
                        child: Container(
                          child: Row(children: [
                            AnimatedContainer(
                              duration: Duration(milliseconds: 500),
                              height: (selectedIndex == index) ? 50 : 0,
                              width: 5,
                              color: Color(0xFF946CC3),
                            ),
                            Expanded(
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                alignment: Alignment.center,
                                height: 60,
                                color: (selectedIndex == index)
                                    ? Colors.white.withOpacity(0.5)
                                    : Color(0xFFFAF6FF),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 5),
                                  child: Text(
                                    tabTitles[index],
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w700,
                                        color: (selectedIndex == index)
                                            ? Color(0xFF946CC3)
                                            : Colors.black),
                                  ),
                                ),
                              ),
                            )
                          ]),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    children: [
                      //Salary
                      CheckboxListWidget(options: [
                        '\$1,000-\$2,500',
                        '\$2,500-\$5,000',
                        '\$5,000-\$7,500',
                        '\$7,500-\$10,000',
                        '\$10,000-\$12,500',
                        '\$12,500-\$15,000',
                      ], selectedOptions: selectedOptionsSalary),


                      //gender
                      CheckboxListWidget(options: [
                        'Only Male',
                        'Only Female',
                        'Other',
                      ], selectedOptions: selectedOptionsGender),

                      //Location
                      CheckboxListWidget(options: [
                        'Andra Pradesh',
                        'Arunachal Pradesh',
                        'Assam',
                        'Bihar',
                        'Chhatisgarh',
                        'Goa',
                        'Gujrat',
                        'Haryana',
                        'Himachal Pradesh',
                        'Jharkhand',
                        'Karnataka',
                        'Kerela',
                        'Madhya Pradesh',
                        'Maharashtra',
                        'Manipur',
                        'Meghalaya',
                        'Mizoram',
                        'Uttar Pradesh'
                      ], selectedOptions: selectedOptionsLocations),

                      //working hours
                      CheckboxListWidget(options: [
                        '2hr-4hr',
                        '4hr-6hr',
                        '6hr-8hr',
                        '8hr-10hr',
                      ], selectedOptions:selectedOptionsWorkingHrs),

                      //type
                      CheckboxListWidget(options: [
                        'Intership',
                        'Part-Time',
                        'Full-Time',
                        'Work from home'
                      ], selectedOptions:selectedOptionsType),

                      //field
                      CheckboxListWidget(options: [
                        'Design',
                        'Marketing',
                        'Music',
                        'Sales',
                        'Health',
                        'Management',
                        'Software',
                        'Media',
                        'Writing',
                        'Editing',
                        'Graphics',
                        'Arts',
                        'Sports',
                        'Media',
                      ], selectedOptions: selectedOptionsField),

                      //Company
                      CheckboxListWidget(options: [
                        'Google',
                        'Amazon',
                        'Flipkart',
                        'Samsung',
                        'Lenovo',
                        'Accenture',
                        'IBM',
                        'TCS',
                        'Wipro',
                        'Dell',
                        'Zoho',
                        'Tata',
                        'Infoysis',
                      ], selectedOptions: selectedOptionsCompany),

                      //Country
                      CheckboxListWidget(options: [
                        'India',
                        'America',
                        'Germany',
                        'England',
                        'France',
                      ], selectedOptions:selectedOptionsCountry),

                      //Skills

                      CheckboxListWidget(options: [
                        'UI/UX Designer',
                        'Web Developer',
                        'App Developer',
                        'HTML/CSS',
                        'Kotlin',
                        'PHP/SQL',
                        'Python',
                      ], selectedOptions: selectedOptionsSkills),

                      //Experience

                      CheckboxListWidget(options: [
                        'Fresher',
                        '1-2 year',
                        '2-3 year',
                        '3-4 year',
                        '4-5 year',
                        '5 year or more',
                      ], selectedOptions:selectedOptionsExperience)
                    ],
                  ),
                ),
              ],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  color: Colors.white,
                  height: 70,
                  width: double.infinity,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '98,543',
                              style: GoogleFonts.inter(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'jobs \/ internships',
                              style: GoogleFonts.inter(fontSize: 11),
                            )
                          ],
                        ),
                        SizedBox(
                            height: 42,
                            width: 130,
                            child: solidButton(text: 'Apply', onTap: () {}))
                      ]),
                )),
          ],
        ),
      ),
    );
  }
}
