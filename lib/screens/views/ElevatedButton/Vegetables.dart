import 'package:flutter/material.dart';
import 'package:fresh_herbs_fruit_project/1_model/Vegetable/vegdummydata.dart';
import 'package:fresh_herbs_fruit_project/Utils/colors.dart';
import 'package:fresh_herbs_fruit_project/screens/detailspage/vegetabledetails.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Vegetable_Page(),
  ));
}

class Vegetable_Page extends StatelessWidget {
  final Map<String, WidgetBuilder> routes = {
    "Tomato": (context) => TomatoVegetablePage(),
    "Cucumber": (context) => CucumberVegetablePage(),
    "Carrot": (context) => CarrotVegetablePage(),
    "Broccoli": (context) => BroccoliVegetablePage(),
    "Mushroom": (context) => MushroomVegetablePage(),
    "Pumpkin": (context) => PumpkinVegetablePage(),
    "Beetroot": (context) => BeetrootVegetablePage(),
    "Garlic": (context) => GarlicVegetablePage(),
    "Ginger": (context) => GingerVegetablePage(),
    "Corn": (context) => CornVegetablePage(),
    "Peas": (context) => PeasVegetablePage(),
    "Brussels Sprouts": (context) => BrusselsSproutsVegetablePage(),
    "Onion": (context) => OnionVegetablePage(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Vegetable",
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
          itemCount: VegetableDummyData.allVegetableData.length,
          itemBuilder: (BuildContext context, int index) {
            var veg = VegetableDummyData.allVegetableData[index];
            String vegName = veg["name"]!;
            return GestureDetector(
              onTap: () {
                if (routes.containsKey(vegName)) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: routes[vegName]!),
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
                                image: NetworkImage(veg["image"]!),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              veg["name"]!,
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
