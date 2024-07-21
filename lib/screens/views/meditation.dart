import 'package:flutter/material.dart';
import 'package:fresh_herbs_fruit_project/1_model/Meditation/meditationdummy.dart';
import 'package:fresh_herbs_fruit_project/screens/detailspage/meditationdetails.dart';
import 'package:google_fonts/google_fonts.dart';

class Meditation_Page extends StatelessWidget {
  final Map<String, WidgetBuilder> routes = {
    "Mindfulness Meditation": (context) => MindfulMeditationMeditationPage(),
    "Breath Awareness": (context) => BreathMeditationPage(),
    "Mantra Meditation": (context) => MantraMeditationPage(),
    "Visualization": (context) => VisualizationMeditationPage(),
    "Chakra Meditation": (context) => ChakraMeditationPage(),
    "Yoga Nidra": (context) => YogaNidraMeditationPage(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(12, 170, 9, 1),
        title: Text(
          "Meditations",
          style: GoogleFonts.sansita(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: MeditationDummyData.meditations.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Navigate to the corresponding meditation detail page
              String meditationTitle = MeditationDummyData.meditations[index];
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
                  MeditationDummyData.meditations[index],
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
