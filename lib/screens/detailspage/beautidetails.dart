import 'package:flutter/material.dart';
import 'package:fresh_herbs_fruit_project/Utils/colors.dart';
import 'package:fresh_herbs_fruit_project/1_model/Beauti/lastpagebeautidummy.dart';
import 'package:google_fonts/google_fonts.dart';

class BeautiTipPage extends StatelessWidget {
  final String title;
  final String description;
  final String uses;

  const BeautiTipPage({
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

class DandraffBeautiTipBeautiTipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> DandraffBeautiTipData =
        LastBeautiDummyData.AllBeautiData[0];

    return BeautiTipPage(
      title: DandraffBeautiTipData['title']!,
      description: DandraffBeautiTipData['description']!,
      uses: DandraffBeautiTipData['uses']!,
    );
  }
}

class HairFallBeautiTipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> HairFallData =
        LastBeautiDummyData.AllBeautiData[1];

    return BeautiTipPage(
      title: HairFallData['title']!,
      description: HairFallData['description']!,
      uses: HairFallData['uses']!,
    );
  }
}

class PimplesBeautiTipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> PimplesData =
        LastBeautiDummyData.AllBeautiData[2];

    return BeautiTipPage(
      title: PimplesData['title']!,
      description: PimplesData['description']!,
      uses: PimplesData['uses']!,
    );
  }
}

class SunburnBeautiTipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> SunburnData =
        LastBeautiDummyData.AllBeautiData[3];

    return BeautiTipPage(
      title: SunburnData['title']!,
      description: SunburnData['description']!,
      uses: SunburnData['uses']!,
    );
  }
}

class DarkCircleaBeautiTipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> DarkCircleaData =
        LastBeautiDummyData.AllBeautiData[4];

    return BeautiTipPage(
      title: DarkCircleaData['title']!,
      description: DarkCircleaData['description']!,
      uses: DarkCircleaData['uses']!,
    );
  }
}
