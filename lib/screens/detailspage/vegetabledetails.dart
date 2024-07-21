import 'package:flutter/material.dart';
import 'package:fresh_herbs_fruit_project/1_model/Vegetable/lastvegdummy.dart';
import 'package:fresh_herbs_fruit_project/Utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class VegetablePage extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String uses;

  const VegetablePage({
    required this.image,
    required this.title,
    required this.description,
    required this.uses,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          title,
          style: GoogleFonts.sansita(fontSize: 15, color: AppColors.textColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 350,
              width: double.infinity,
              child: Image.network(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  title,
                  style: GoogleFonts.sansita(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  description,
                  style: GoogleFonts.sansita(fontSize: 15),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.sansita(fontSize: 15, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Benefits:',
                      style: GoogleFonts.sansita(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: '\n',
                    ),
                    ...uses.split(',').map((benefit) {
                      return TextSpan(
                        text: '• $benefit\n',
                      );
                    }).toList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TomatoVegetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> TomatoData =
        LastVegetableDummyData.VegetableData[0];

    return VegetablePage(
      image: TomatoData['image']!,
      title: TomatoData['title']!,
      description: TomatoData['description']!,
      uses: TomatoData['uses']!,
    );
  }
}

class CucumberVegetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> CucumberData =
        LastVegetableDummyData.VegetableData[1];

    return VegetablePage(
      image: CucumberData['image']!,
      title: CucumberData['title']!,
      description: CucumberData['description']!,
      uses: CucumberData['uses']!,
    );
  }
}

class CarrotVegetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> CarrotData =
        LastVegetableDummyData.VegetableData[2];

    return VegetablePage(
      image: CarrotData['image']!,
      title: CarrotData['title']!,
      description: CarrotData['description']!,
      uses: CarrotData['uses']!,
    );
  }
}

class BroccoliVegetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> BroccoliData =
        LastVegetableDummyData.VegetableData[3];

    return VegetablePage(
      image: BroccoliData['image']!,
      title: BroccoliData['title']!,
      description: BroccoliData['description']!,
      uses: BroccoliData['uses']!,
    );
  }
}

class MushroomVegetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> MushroomData =
        LastVegetableDummyData.VegetableData[4];

    return VegetablePage(
      image: MushroomData['image']!,
      title: MushroomData['title']!,
      description: MushroomData['description']!,
      uses: MushroomData['uses']!,
    );
  }
}

class PumpkinVegetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> PumpkinData =
        LastVegetableDummyData.VegetableData[5];

    return VegetablePage(
      image: PumpkinData['image']!,
      title: PumpkinData['title']!,
      description: PumpkinData['description']!,
      uses: PumpkinData['uses']!,
    );
  }
}

class BeetrootVegetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> BeetrootData =
        LastVegetableDummyData.VegetableData[6];

    return VegetablePage(
      image: BeetrootData['image']!,
      title: BeetrootData['title']!,
      description: BeetrootData['description']!,
      uses: BeetrootData['uses']!,
    );
  }
}

class GarlicVegetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> GarlicData =
        LastVegetableDummyData.VegetableData[7];

    return VegetablePage(
      image: GarlicData['image']!,
      title: GarlicData['title']!,
      description: GarlicData['description']!,
      uses: GarlicData['uses']!,
    );
  }
}

class GingerVegetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> GingerData =
        LastVegetableDummyData.VegetableData[8];

    return VegetablePage(
      image: GingerData['image']!,
      title: GingerData['title']!,
      description: GingerData['description']!,
      uses: GingerData['uses']!,
    );
  }
}

class EggplantVegetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> EggplantData =
        LastVegetableDummyData.VegetableData[9];

    return VegetablePage(
      image: EggplantData['image']!,
      title: EggplantData['title']!,
      description: EggplantData['description']!,
      uses: EggplantData['uses']!,
    );
  }
}

class CornVegetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> CornData =
        LastVegetableDummyData.VegetableData[10];

    return VegetablePage(
      image: CornData['image']!,
      title: CornData['title']!,
      description: CornData['description']!,
      uses: CornData['uses']!,
    );
  }
}

class PeasVegetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> PeasData =
        LastVegetableDummyData.VegetableData[11];

    return VegetablePage(
      image: PeasData['image']!,
      title: PeasData['title']!,
      description: PeasData['description']!,
      uses: PeasData['uses']!,
    );
  }
}

class BrusselsSproutsVegetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> BrusselsSproutsData =
        LastVegetableDummyData.VegetableData[12];

    return VegetablePage(
      image: BrusselsSproutsData['image']!,
      title: BrusselsSproutsData['title']!,
      description: BrusselsSproutsData['description']!,
      uses: BrusselsSproutsData['uses']!,
    );
  }
}

class OnionVegetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> OnionData =
        LastVegetableDummyData.VegetableData[13];

    return VegetablePage(
      image: OnionData['image']!,
      title: OnionData['title']!,
      description: OnionData['description']!,
      uses: OnionData['uses']!,
    );
  }
}
