import 'package:flutter/material.dart';
import 'package:fresh_herbs_fruit_project/1_model/Herb_elevated/last_herb_dummy.dart';
import 'package:fresh_herbs_fruit_project/Utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class HerbsPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String uses;

  const HerbsPage({
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

class MintPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> MintData = LastHerbsDummyData.allHerbsData[0];

    return HerbsPage(
      image: MintData['image']!,
      title: MintData['title']!,
      description: MintData['description']!,
      uses: MintData['uses']!,
    );
  }
}

class HolyBasilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> HolyBasilData =
        LastHerbsDummyData.allHerbsData[1];

    return HerbsPage(
      image: HolyBasilData['image']!,
      title: HolyBasilData['title']!,
      description: HolyBasilData['description']!,
      uses: HolyBasilData['uses']!,
    );
  }
}

class ParsleyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> ParsleyData = LastHerbsDummyData.allHerbsData[2];

    return HerbsPage(
      image: ParsleyData['image']!,
      title: ParsleyData['title']!,
      description: ParsleyData['description']!,
      uses: ParsleyData['uses']!,
    );
  }
}

class RosemaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> RosemaryData = LastHerbsDummyData.allHerbsData[3];

    return HerbsPage(
      image: RosemaryData['image']!,
      title: RosemaryData['title']!,
      description: RosemaryData['description']!,
      uses: RosemaryData['uses']!,
    );
  }
}

class AloeVeraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> AloeVeraData = LastHerbsDummyData.allHerbsData[4];

    return HerbsPage(
      image: AloeVeraData['image']!,
      title: AloeVeraData['title']!,
      description: AloeVeraData['description']!,
      uses: AloeVeraData['uses']!,
    );
  }
}

class LavenderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> LavenderData = LastHerbsDummyData.allHerbsData[5];

    return HerbsPage(
      image: LavenderData['image']!,
      title: LavenderData['title']!,
      description: LavenderData['description']!,
      uses: LavenderData['uses']!,
    );
  }
}

class AshwagandhaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> AshwagandhaData =
        LastHerbsDummyData.allHerbsData[6];

    return HerbsPage(
      image: AshwagandhaData['image']!,
      title: AshwagandhaData['title']!,
      description: AshwagandhaData['description']!,
      uses: AshwagandhaData['uses']!,
    );
  }
}

class ThymePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> ThymeData = LastHerbsDummyData.allHerbsData[7];

    return HerbsPage(
      image: ThymeData['image']!,
      title: ThymeData['title']!,
      description: ThymeData['description']!,
      uses: ThymeData['uses']!,
    );
  }
}

class GingerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> GingerData = LastHerbsDummyData.allHerbsData[8];

    return HerbsPage(
      image: GingerData['image']!,
      title: GingerData['title']!,
      description: GingerData['description']!,
      uses: GingerData['uses']!,
    );
  }
}

class TurmericPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> TurmericData = LastHerbsDummyData.allHerbsData[9];

    return HerbsPage(
      image: TurmericData['image']!,
      title: TurmericData['title']!,
      description: TurmericData['description']!,
      uses: TurmericData['uses']!,
    );
  }
}
