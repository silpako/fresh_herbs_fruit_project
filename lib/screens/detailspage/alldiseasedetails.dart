import 'package:flutter/material.dart';
import 'package:fresh_herbs_fruit_project/Utils/colors.dart';
import 'package:fresh_herbs_fruit_project/1_model/Disease/lastpagealldisease.dart';

import 'package:google_fonts/google_fonts.dart';

class DiseasePage extends StatelessWidget {
  final String title;
  final String description;
  final String uses;

  const DiseasePage({
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
                      text: 'Remedies:',
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

class AcidityDiseasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> AcidityData =
        LastDiseasesDummyData.AllDiseasesData[0];

    return DiseasePage(
      title: AcidityData['title']!,
      description: AcidityData['description']!,
      uses: AcidityData['uses']!,
    );
  }
}

class AsthmaDiseasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> AsthmaData =
        LastDiseasesDummyData.AllDiseasesData[1];

    return DiseasePage(
      title: AsthmaData['title']!,
      description: AsthmaData['description']!,
      uses: AsthmaData['uses']!,
    );
  }
}

class HeadacheDiseasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> HeadacheData =
        LastDiseasesDummyData.AllDiseasesData[2];

    return DiseasePage(
      title: HeadacheData['title']!,
      description: HeadacheData['description']!,
      uses: HeadacheData['uses']!,
    );
  }
}

class StomachAcheDiseasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> StomachAcheData =
        LastDiseasesDummyData.AllDiseasesData[3];

    return DiseasePage(
      title: StomachAcheData['title']!,
      description: StomachAcheData['description']!,
      uses: StomachAcheData['uses']!,
    );
  }
}

class CoughDiseasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> CoughData =
        LastDiseasesDummyData.AllDiseasesData[4];

    return DiseasePage(
      title: CoughData['title']!,
      description: CoughData['description']!,
      uses: CoughData['uses']!,
    );
  }
}

class ColdDiseasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> ColdData =
        LastDiseasesDummyData.AllDiseasesData[5];

    return DiseasePage(
      title: ColdData['title']!,
      description: ColdData['description']!,
      uses: ColdData['uses']!,
    );
  }
}
