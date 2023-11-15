import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workshala/utils/categoriesa_card.dart';
import 'package:workshala/utils/solidButton.dart';

class categories extends StatelessWidget {
  const categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(height: 30,),
            Container(
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(52),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x75946CC3),
                    blurRadius: 71,
                    offset: Offset(0, -15),
                    spreadRadius: -2,
                  )
                ],
              ),
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 650,
              child: Column(children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                        )),
                    Text(
                      'Categories',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Choose 3-5 catogries and we’ll optimize the\nvacancies for you.',
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 18,
                    mainAxisSpacing: 18,
                    childAspectRatio: (1/0.8),
                    children: [
                      categoriesCard(img: 'assets/crypto.png', label: 'Crypto'),
                      categoriesCard(
                          img: 'assets/banking.png', label: 'Banking'),
                      categoriesCard(
                          img: 'assets/programming.png', label: 'Programming'),
                      categoriesCard(img: 'assets/food.png', label: 'Food'),
                      categoriesCard(
                          img: 'assets/HR.png', label: 'Human Resources'),
                      categoriesCard(
                          img: 'assets/contentWriter.png',
                          label: 'Content Writer'),
                      categoriesCard(
                          img: 'assets/art.png', label: 'Art and Design'),
                      categoriesCard(
                          img: 'assets/customerService.png',
                          label: 'Customer Service'),
                    ],
                  ),
                ),
              ]),
            ),

           SizedBox(height: 12,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 142,
                  height: 50,
                  child: solidButton(text:'Previous' , onTap: (){})),
                   SizedBox(
                  width: 142,
                  height: 50,
                  child: solidButton(text:'Next' , onTap: (){})),
              ],
            ),
            

          ],
        ),
      ),
    );
  }
}
