import 'package:flutter/material.dart';
import 'package:fresh_herbs_fruit_project/1_model/Fruits/fruitsdummy.dart';
import 'package:fresh_herbs_fruit_project/Utils/colors.dart';
import 'package:fresh_herbs_fruit_project/screens/detailspage/fruitsdetailspage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Fruits_Page(),
  ));
}

class Fruits_Page extends StatelessWidget {
  final Map<String, WidgetBuilder> routes = {
    "Mango": (context) => MangoDetailPage(),
    "Apple": (context) => AppleDetailPage(),
    "Orange": (context) => OrangeDetailPage(),
    "Banana": (context) => BananaDetailPage(),
    "Pomegranate": (context) => PomegranateDetailPage(),
    "Kiwi": (context) => KiwiDetailPage(),
    "Watermelon": (context) => WatermelonDetailPage(),
    "Pineapple": (context) => PineappleDetailPage(),
    "Jackfruit": (context) => JackfruitDetailPage(),
    "Rambutan": (context) => RambutanDetailPage(),
    "RedGrape": (context) => RedGrapeDetailPage(),
    "Papaya": (context) => PapayaDetailPage(),
    "DragonFruit": (context) => DragonFruitDetailPage(),
    "Avocado": (context) => AvocadoDetailPage(),
    "Grapes": (context) => GrapesDetailPage(),
    "RedGuava": (context) => RedGuavaDetailPage(),
    "Guava": (context) => GuavaDetailPage(),
    "Fig": (context) => FigDetailPage(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "FRUITS",
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
          itemCount: FruitsDummyData.allFruitsData.length,
          itemBuilder: (BuildContext context, int index) {
            var fruit = FruitsDummyData.allFruitsData[index];
            String fruitName = fruit["name"]!;

            return GestureDetector(
              onTap: () {
                if (routes.containsKey(fruitName)) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: routes[fruitName]!),
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
                                image: NetworkImage(fruit["image"]!),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              fruitName,
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
