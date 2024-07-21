import 'package:flutter/material.dart';
import 'package:fresh_herbs_fruit_project/1_model/Fruits/lastPagefruitdummy.dart';
import 'package:fresh_herbs_fruit_project/Utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class FruitDetailPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String uses;

  const FruitDetailPage({
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
                        text:
                            '• $benefit\n', // Add a bullet point and a new line
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

class MangoDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> MangoData = LastFruitsDummyData.FruitsData[0];

    return FruitDetailPage(
      image: MangoData['image']!,
      title: MangoData['title']!,
      description: MangoData['description']!,
      uses: MangoData['uses']!,
    );
  }
}

class AppleDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> AppleData = LastFruitsDummyData.FruitsData[1];

    return FruitDetailPage(
      image: AppleData['image']!,
      title: AppleData['title']!,
      description: AppleData['description']!,
      uses: AppleData['uses']!,
    );
  }
}

class OrangeDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> OrangeData = LastFruitsDummyData.FruitsData[2];

    return FruitDetailPage(
      image: OrangeData['image']!,
      title: OrangeData['title']!,
      description: OrangeData['description']!,
      uses: OrangeData['uses']!,
    );
  }
}

class BananaDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> BananaData = LastFruitsDummyData.FruitsData[3];

    return FruitDetailPage(
      image: BananaData['image']!,
      title: BananaData['title']!,
      description: BananaData['description']!,
      uses: BananaData['uses']!,
    );
  }
}

class PomegranateDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> PomegranateData =
        LastFruitsDummyData.FruitsData[4];

    return FruitDetailPage(
      image: PomegranateData['image']!,
      title: PomegranateData['title']!,
      description: PomegranateData['description']!,
      uses: PomegranateData['uses']!,
    );
  }
}

class KiwiDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> KiwiData = LastFruitsDummyData.FruitsData[5];

    return FruitDetailPage(
      image: KiwiData['image']!,
      title: KiwiData['title']!,
      description: KiwiData['description']!,
      uses: KiwiData['uses']!,
    );
  }
}

class WatermelonDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> WatermelonData =
        LastFruitsDummyData.FruitsData[6];

    return FruitDetailPage(
      image: WatermelonData['image']!,
      title: WatermelonData['title']!,
      description: WatermelonData['description']!,
      uses: WatermelonData['uses']!,
    );
  }
}

class PineappleDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> PineappleData = LastFruitsDummyData.FruitsData[7];

    return FruitDetailPage(
      image: PineappleData['image']!,
      title: PineappleData['title']!,
      description: PineappleData['description']!,
      uses: PineappleData['uses']!,
    );
  }
}

class JackfruitDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> JackfruitData = LastFruitsDummyData.FruitsData[8];

    return FruitDetailPage(
      image: JackfruitData['image']!,
      title: JackfruitData['title']!,
      description: JackfruitData['description']!,
      uses: JackfruitData['uses']!,
    );
  }
}

class RambutanDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> RambutanData = LastFruitsDummyData.FruitsData[9];

    return FruitDetailPage(
      image: RambutanData['image']!,
      title: RambutanData['title']!,
      description: RambutanData['description']!,
      uses: RambutanData['uses']!,
    );
  }
}

class RedGrapeDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> RedGrapeData = LastFruitsDummyData.FruitsData[10];

    return FruitDetailPage(
      image: RedGrapeData['image']!,
      title: RedGrapeData['title']!,
      description: RedGrapeData['description']!,
      uses: RedGrapeData['uses']!,
    );
  }
}

class PapayaDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> PapayaData = LastFruitsDummyData.FruitsData[11];

    return FruitDetailPage(
      image: PapayaData['image']!,
      title: PapayaData['title']!,
      description: PapayaData['description']!,
      uses: PapayaData['uses']!,
    );
  }
}

class DragonFruitDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> DragonFruitData =
        LastFruitsDummyData.FruitsData[12];

    return FruitDetailPage(
      image: DragonFruitData['image']!,
      title: DragonFruitData['title']!,
      description: DragonFruitData['description']!,
      uses: DragonFruitData['uses']!,
    );
  }
}

class AvocadoDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> AvocadoData = LastFruitsDummyData.FruitsData[13];

    return FruitDetailPage(
      image: AvocadoData['image']!,
      title: AvocadoData['title']!,
      description: AvocadoData['description']!,
      uses: AvocadoData['uses']!,
    );
  }
}

class GrapesDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> GrapesData = LastFruitsDummyData.FruitsData[14];

    return FruitDetailPage(
      image: GrapesData['image']!,
      title: GrapesData['title']!,
      description: GrapesData['description']!,
      uses: GrapesData['uses']!,
    );
  }
}

class RedGuavaDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> RedGuavaData = LastFruitsDummyData.FruitsData[15];

    return FruitDetailPage(
      image: RedGuavaData['image']!,
      title: RedGuavaData['title']!,
      description: RedGuavaData['description']!,
      uses: RedGuavaData['uses']!,
    );
  }
}

class GuavaDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> GuavaData = LastFruitsDummyData.FruitsData[16];

    return FruitDetailPage(
      image: GuavaData['image']!,
      title: GuavaData['title']!,
      description: GuavaData['description']!,
      uses: GuavaData['uses']!,
    );
  }
}

class FigDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> FigData = LastFruitsDummyData.FruitsData[16];

    return FruitDetailPage(
      image: FigData['image']!,
      title: FigData['title']!,
      description: FigData['description']!,
      uses: FigData['uses']!,
    );
  }
}
