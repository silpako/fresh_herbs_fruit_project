import 'package:flutter/material.dart';
import 'package:fresh_herbs_fruit_project/Utils/colors.dart';
import 'package:fresh_herbs_fruit_project/1_model/Meditation/lastpagemeditation.dart';
import 'package:google_fonts/google_fonts.dart';

class MeditationPage extends StatelessWidget {
  final String title;
  final String description;
  final String uses;

  const MeditationPage({
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

class MindfulMeditationMeditationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> MindfulMeditationData =
        LastMeditationDummyData.AllMeditationData[0];

    return MeditationPage(
      title: MindfulMeditationData['title']!,
      description: MindfulMeditationData['description']!,
      uses: MindfulMeditationData['uses']!,
    );
  }
}

class BreathMeditationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> BreathData =
        LastMeditationDummyData.AllMeditationData[1];

    return MeditationPage(
      title: BreathData['title']!,
      description: BreathData['description']!,
      uses: BreathData['uses']!,
    );
  }
}

class MantraMeditationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> MantraData =
        LastMeditationDummyData.AllMeditationData[2];

    return MeditationPage(
      title: MantraData['title']!,
      description: MantraData['description']!,
      uses: MantraData['uses']!,
    );
  }
}

class VisualizationMeditationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> VisualizationData =
        LastMeditationDummyData.AllMeditationData[3];

    return MeditationPage(
      title: VisualizationData['title']!,
      description: VisualizationData['description']!,
      uses: VisualizationData['uses']!,
    );
  }
}

class ChakraMeditationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> ChakraData =
        LastMeditationDummyData.AllMeditationData[4];

    return MeditationPage(
      title: ChakraData['title']!,
      description: ChakraData['description']!,
      uses: ChakraData['uses']!,
    );
  }
}

class YogaNidraMeditationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> YogaNidraData =
        LastMeditationDummyData.AllMeditationData[5];

    return MeditationPage(
      title: YogaNidraData['title']!,
      description: YogaNidraData['description']!,
      uses: YogaNidraData['uses']!,
    );
  }
}
