import 'package:flutter/material.dart';
import 'package:fresh_herbs_fruit_project/Utils/colors.dart';
import 'package:fresh_herbs_fruit_project/1_model/Disease/alldiseases.dart';
import 'package:fresh_herbs_fruit_project/screens/detailspage/alldiseasedetails.dart';

import 'package:google_fonts/google_fonts.dart';

class Diseases_Page extends StatelessWidget {
  final Map<String, WidgetBuilder> routes = {
    "Acidity": (context) => AcidityDiseasePage(),
    "Asthma": (context) => AsthmaDiseasePage(),
    "Headache": (context) => HeadacheDiseasePage(),
    "Stomach Ache": (context) => StomachAcheDiseasePage(),
    "Cough": (context) => CoughDiseasePage(),
    "Cold": (context) => ColdDiseasePage(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Diseasess",
          style: GoogleFonts.sansita(color: AppColors.textColor),
        ),
      ),
      body: ListView.builder(
        itemCount: DiseasesDummyData.DiseasesData.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              String DiseasesTitle = DiseasesDummyData.DiseasesData[index];
              if (routes.containsKey(DiseasesTitle)) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: routes[DiseasesTitle]!),
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
                  DiseasesDummyData.DiseasesData[index],
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
