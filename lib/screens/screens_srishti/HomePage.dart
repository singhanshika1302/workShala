import 'package:flutter/material.dart';
import 'package:workshala/utils/Utilities.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:workshala/viewModel/jobs_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  JobsViewModel jobsViewModel = JobsViewModel();
  bool outlinedSelected = false;
  bool isSelected= false;

  String selectedTag = 'HTML'; // Default selected tag
  late Future<List<List<dynamic>>> fetchData;

  final List<String> JobsCategories = [
    'Design',
    'Technology',
    'Sales',
    'Development',
  ];
  List<String> selectedCategories = [];

  final List<String> coursesTags = [
    'HTML',
    'Python',
    'Flutter',
    'Java',
    'FireBase',
    'Designing',
    'MongoDB',
    'Node.js',
  ];

  @override
  void initState() {
    super.initState();
    fetchData = fetchDataFromAPI(selectedTag);
  }

  Future<List<List<dynamic>>> fetchDataFromAPI(String tag) async {
    String apiUrl = 'https://course-recommendation-modal2.onrender.com/recommendations/$tag';

    try {
      var response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        // Print raw response body
        print('Raw Response for tag $tag: ${response.body}');
        Map<String, dynamic> data = json.decode(response.body);
        List<List<dynamic>> recommendations = data['recommendations'].cast<List<dynamic>>();
        print('Recommendations for $tag: $recommendations');

        return recommendations;

      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      throw Exception('Failed to fetch data: $error');
    }
  }







  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height*0.01,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/Ellipse 1.png',scale: 3.6,),

                      SizedBox(width: size.width*0.04,),

                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hello',style: TextStyle(
                              fontSize: 17,
                              color: Colors.black54
                          ),),

                          Text('Vidita Singh',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ],
                  ),


                  // SizedBox(width: size.width*0.32),

                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: IconButton(
                        icon: Icon(Icons.notification_add_outlined),
                        iconSize: 25,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: size.height*0.02,),

              Container(
                height: size.height*0.07,
                decoration: const BoxDecoration(
                    color: Color(0xfff4f0f8),
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.search_outlined),
                      iconSize: 35,
                      color: Colors.grey,
                      onPressed: () {},
                    ),

                    const Expanded(
                      child: TextField(
                        keyboardType: TextInputType.text,
                        style:  TextStyle(fontSize: 15,
                            color: Colors.black54),
                        decoration:  InputDecoration(
                          hintText: 'Search for a job or company',
                          border: InputBorder.none,
                        ),
                      ),
                    ),

                    SizedBox(width: size.width*0.18),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                      child: Image.asset('assets/Group 4.png',scale: 4,),
                    )

                  ],
                ),
              ),

              SizedBox(height: size.height*0.02,),

              Image.asset('assets/Frame 16.png'),

              SizedBox(height: size.height*0.01,),

              const Text('Recommended Courses',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),

              SizedBox(height: size.height*0.03,),




              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: coursesTags.map((courseTag) => Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTag = courseTag;
                          fetchData = fetchDataFromAPI(selectedTag);
                        });
                      },
                      child: Chip(
                        label: Text( courseTag ,
                          style: TextStyle(
                            color: selectedTag == courseTag ? Colors.white : Colors.black,
                          ),),
                        backgroundColor: selectedTag == courseTag ? Color(0xff946CC3) : Colors.grey[350],
                      ),
                    ),
                  )).toList(),
                ),
              ),


              SizedBox(height: size.height*0.03,),

              SizedBox(
                height: size.height*.255,
                width: size.width,
                child: FutureBuilder<List<dynamic>>(
                  future: fetchData,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return Center(child: Text('No data available'));
                    } else {
                      try {
                        List<dynamic> responseData = snapshot.data!;
                        print(responseData);
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: responseData.length,
                          itemBuilder: (context, index) {
                            return RecommendedCourses(size.width*.81, selectedTag, responseData[index][0]);

                          },
                        );
                      } catch (e) {
                        return Center(child: Text('Error processing data'));
                      }
                    }
                  },
                ),
              ),


              SizedBox(height: size.height*0.02,),

              const Text('Recent Jobs',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),

              SizedBox(height: size.height*0.02,),


              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: JobsCategories.map((jobCategory) => Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: FilterChip(
                        selected: selectedCategories.contains(jobCategory),
                        // backgroundColor: Color(0xffe3d2f7),
                        selectedColor: Color(0xff946CC3),

                        label: Text(jobCategory,
                          style: TextStyle(
                              color: selectedCategories.contains(jobCategory) ? Colors.white : Colors.black),
                        ),

                        onSelected: (selected){
                          setState(() {
                            if(selected){
                              selectedCategories.add(jobCategory);
                            }
                            else{
                              selectedCategories.remove(jobCategory);
                            }
                          });
                        }),
                  )
                  ).toList(),
                ),
              ),



              SizedBox(height: size.height*0.04,),

//api integrated for jobs anshika
             
              Expanded(
            child: Container(
              // height: height * 0.35,
              child: FutureBuilder(
                  future: jobsViewModel.FetchJobsapi(),
                  builder: (BuildContext context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator(
                        color: Colors.black,
                      );
                    } else if (snapshot.hasError) {
                      print('Error: ${snapshot.error}');
                      return Center(
                        child: Text('Error loading data'),
                      );
                    } else if (snapshot.data == null ||
                        snapshot.data!.companyName == null) {
                      return Center(
                        child: Text('No data available'),
                      );
                    } else {
                      return ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: snapshot.data!.companyName!.length,
                          itemBuilder: (context, index) {
                            
                              
                            return Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: RecentJobsBlock(snapshot.data!.imageUrl.toString(), snapshot.data!.description.toString(), snapshot.data!.companyName.toString(),
                                              'California, United States', snapshot.data!.stipend.toString()),
                            );
                          });
                    }
                  }),
            ),
          )
              

            ],
          ),
        ),
      ),
    );
  }
}