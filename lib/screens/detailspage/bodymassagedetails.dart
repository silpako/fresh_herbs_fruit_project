import 'package:flutter/material.dart';
import 'package:fresh_herbs_fruit_project/Utils/colors.dart';
import 'package:fresh_herbs_fruit_project/1_model/Bodymassage/lastbodymassage.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyMassagePage extends StatelessWidget {
  final String title;
  final String description;
  final String uses;

  const BodyMassagePage({
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

class AbhyangaBodyMassagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> AbhyangaData =
        LastBodyMassageDummyData.AllBodyMassageData[0];

    return BodyMassagePage(
      title: AbhyangaData['title']!,
      description: AbhyangaData['description']!,
      uses: AbhyangaData['uses']!,
    );
  }
}

class ShirodharaBodyMassagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> ShirodharaData =
        LastBodyMassageDummyData.AllBodyMassageData[1];

    return BodyMassagePage(
      title: ShirodharaData['title']!,
      description: ShirodharaData['description']!,
      uses: ShirodharaData['uses']!,
    );
  }
}

class PizhichilBodyMassagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> PizhichilData =
        LastBodyMassageDummyData.AllBodyMassageData[2];

    return BodyMassagePage(
      title: PizhichilData['title']!,
      description: PizhichilData['description']!,
      uses: PizhichilData['uses']!,
    );
  }
}

class UdvartanaBodyMassagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> UdvartanaData =
        LastBodyMassageDummyData.AllBodyMassageData[3];

    return BodyMassagePage(
      title: UdvartanaData['title']!,
      description: UdvartanaData['description']!,
      uses: UdvartanaData['uses']!,
    );
  }
}

class MarmaBodyMassagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> MarmaData =
        LastBodyMassageDummyData.AllBodyMassageData[4];

    return BodyMassagePage(
      title: MarmaData['title']!,
      description: MarmaData['description']!,
      uses: MarmaData['uses']!,
    );
  }
}

class GarshanaBodyMassagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> GarshanaData =
        LastBodyMassageDummyData.AllBodyMassageData[5];

    return BodyMassagePage(
      title: GarshanaData['title']!,
      description: GarshanaData['description']!,
      uses: GarshanaData['uses']!,
    );
  }
}
