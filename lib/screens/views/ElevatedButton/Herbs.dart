import 'package:flutter/material.dart';
import 'package:fresh_herbs_fruit_project/1_model/Herb_elevated/herbdummy.dart';
import 'package:fresh_herbs_fruit_project/Utils/colors.dart';
import 'package:fresh_herbs_fruit_project/screens/detailspage/herbsdetailspage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Herbs_Page(),
  ));
}

class Herbs_Page extends StatelessWidget {
  final Map<String, WidgetBuilder> routes = {
    "Mint": (context) => MintPage(),
    "Holy Basil": (context) => HolyBasilPage(),
    "Parsley": (context) => ParsleyPage(),
    "Rosemary": (context) => RosemaryPage(),
    "Aloe Vera": (context) => AloeVeraPage(),
    "Lavender": (context) => LavenderPage(),
    "Ashwagandha": (context) => AshwagandhaPage(),
    "Thyme": (context) => ThymePage(),
    "Ginger": (context) => GingerPage(),
    "Turmeric": (context) => TurmericPage(),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Herbs",
          style: GoogleFonts.sansita(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
          ),
          itemCount: HerbsDummyData.allHerbsData.length,
          itemBuilder: (BuildContext context, int index) {
            var herbs = HerbsDummyData.allHerbsData[index];
            String herbsName = herbs["name"]!;
            return GestureDetector(
              onTap: () {
                if (routes.containsKey(herbsName)) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: routes[herbsName]!),
                  );
                }
              },
              child: Card(
                elevation: 15,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20)),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(herbs["image"]!),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              herbs["name"]!,
                              style: GoogleFonts.sansita(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
