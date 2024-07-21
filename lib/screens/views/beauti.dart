import 'package:flutter/material.dart';
import 'package:fresh_herbs_fruit_project/1_model/Beauti/beautidummy.dart';
import 'package:fresh_herbs_fruit_project/screens/detailspage/beautidetails.dart';

import 'package:google_fonts/google_fonts.dart';

class Beauti_Page extends StatelessWidget {
  final Map<String, WidgetBuilder> routes = {
    "Dandraff": (context) => DandraffBeautiTipBeautiTipPage(),
    "Hair Fall": (context) => HairFallBeautiTipPage(),
    "Pimples": (context) => PimplesBeautiTipPage(),
    "Sunburn": (context) => SunburnBeautiTipPage(),
    "Dark Circle": (context) => DarkCircleaBeautiTipPage(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(12, 170, 9, 1),
        title: Text(
          "Beauti",
          style: GoogleFonts.sansita(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: BeautiDummyData.BeautiData.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Navigate to the corresponding Beauti detail page
              String BeautiTitle = BeautiDummyData.BeautiData[index];
              if (routes.containsKey(BeautiTitle)) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: routes[BeautiTitle]!),
                );
              }
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ListTile(
                title: Text(
                  BeautiDummyData.BeautiData[index],
                  style: GoogleFonts.sansita(fontSize: 13),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
