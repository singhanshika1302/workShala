import 'package:flutter/material.dart';


Widget RecommendedCourses(width, selectedTag, courseName){
  return Padding(
    padding: const EdgeInsets.only(right: 30),
    child: Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            color: Color(0xff946CC3),
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1.5),
                              borderRadius: BorderRadius.circular(10),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset( 'assets/wordpress logo.png' ,scale: 5,),
                            )),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('$selectedTag Course',style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                          ),),

                          Text('by $selectedTag Developer',style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black45
                          ),)
                        ],
                      ),

                    ],
                  ),


                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Icon(Icons.favorite_border, size: 22, color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),

              // SizedBox(height: size.height*0.01,),

              const Padding(
                padding:  EdgeInsets.fromLTRB(0, 5, 0, 3),
                child: Divider(
                  thickness: 1,
                  color: Color(0xff946CC3),
                ),
              ),


              Padding(
                padding:  const EdgeInsets.fromLTRB(6, 0, 0, 3),
                child: Text(courseName,style: const TextStyle(
                  fontSize: 18,
                  color:Colors.black,
                  fontWeight: FontWeight.w500,
                ),),
              ),


              const Padding(
                padding:  EdgeInsets.fromLTRB(6, 0, 0, 7),
                child: Text('\u0024 100 for whole course',style: TextStyle(
                    fontSize: 13,
                    color:Colors.blueAccent,
                    fontWeight: FontWeight.bold
                ),),
              ),



              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff946CC3),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: Text('Online',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),
                  ),
                ),
              ),

            ],
          ),
        )
    ),
  );
}




Widget RecentJobsBlock(image, String jobTitle, String companyName, String location, salary ){
  return Container(
    // width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: Color(0xff946CC3),
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1.5),
                            borderRadius: BorderRadius.circular(10),

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child:Image.network(image ,scale: 4,),
                          )),
                    ),


                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(jobTitle ,style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                        ),),

                        Text(companyName,style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black45
                        ),)
                      ],
                    ),

                  ],
                ),


                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Icon(Icons.favorite_border, size: 22, color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),


            const Padding(
              padding:  EdgeInsets.fromLTRB(0, 5, 0, 3),
              child: Divider(
                thickness: 1,
                color: Color(0xff946CC3),
              ),
            ),


            Padding(
              padding:  const EdgeInsets.fromLTRB(6, 0, 0, 3),
              child: Text(location ,style: const TextStyle(
                  fontSize: 20,
                  color:Colors.black45,
                  fontWeight: FontWeight.bold
              ),),
            ),


            Padding(
              padding:  const EdgeInsets.fromLTRB(6, 5, 0, 10),
              child: Text(salary ,style:  const TextStyle(
                  fontSize: 14,
                  color:Colors.blueAccent,
                  fontWeight: FontWeight.bold
              ),),
            ),



            //full time or remote block
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff946CC3),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                    child: Text('Full Time',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff946CC3),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(13, 5, 13, 5),
                      child: Text('Remote',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                  ),
                ),

              ],
            ),



          ],
        ),
      )
  );
}



Widget ProfileOptions(image, width, text){
  return Row(
    children: [
      Image.asset(image,scale: 5,),
      SizedBox(width: width,),

      Text(text,style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w500
      ),)

    ],
  );
}



Widget SettingsOptions(image, text){
  return Row(
    children: [
      Image.asset(image,scale: 4,),

      Padding(
        padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
        child: Text(text,style: const TextStyle(
            fontSize: 22,
            color: Color(0xff946cc3),
            fontWeight: FontWeight.w400
        ),),
      ),
    ],
  );
}




// textform field for sign up screen
Widget TextformfieldSignup(
    controller, hintText, bool obscure) {
  return Container(
    decoration: const BoxDecoration(
      boxShadow:[
        BoxShadow(
          color: Color(0xFFE6E6FA),
          blurRadius: 5,
          offset: const Offset(0, 7),

        ),
      ],
    ),
    child: TextFormField(
      controller: controller,
      obscureText: obscure,
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      // validator: validation,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(15),
        hintText: hintText,
        filled: true,
        fillColor: Color(0xFFEEEEEE),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xff946CC3),
            width: 2,
          ),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
              color: Color(0xFFEEEEEE)
          ),
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.white70,
          ),
        ),
      ),
    ),
  );
}




//ending statement of already have an acc or create a new acc
Widget endStatement(String text1, String text2, BuildContext context, page) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        text1,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 17.0,
        ),),
      TextButton(
        onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> page));
        },
        child: Text(
          text2,
          style: const TextStyle(
            color: Color(0xFF946CC3),
            fontSize: 17.0,
          ),),)
    ],
  );
}