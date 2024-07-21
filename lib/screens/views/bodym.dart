import 'package:flutter/material.dart';
import 'package:fresh_herbs_fruit_project/1_model/Bodymassage/bodydummy.dart';
import 'package:fresh_herbs_fruit_project/screens/detailspage/bodymassagedetails.dart';
import 'package:google_fonts/google_fonts.dart';

class Body_Massage_Page extends StatelessWidget {
  final Map<String, WidgetBuilder> routes = {
    "Abhyanga": (context) => AbhyangaBodyMassagePage(),
    "Shirodhara": (context) => ShirodharaBodyMassagePage(),
    "Pizhichil": (context) => PizhichilBodyMassagePage(),
    "Udvartana": (context) => UdvartanaBodyMassagePage(),
    "Garshana": (context) => GarshanaBodyMassagePage(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(12, 170, 9, 1),
        title: Text(
          "Body Massages",
          style: GoogleFonts.sansita(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: BodymassageDummyData.Bodymassages.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              String meditationTitle = BodymassageDummyData.Bodymassages[index];
              if (routes.containsKey(meditationTitle)) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: routes[meditationTitle]!),
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
                  BodymassageDummyData.Bodymassages[index],
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
