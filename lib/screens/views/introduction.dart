import 'package:flutter/material.dart';
import 'package:fresh_herbs_fruit_project/Utils/colors.dart';
import 'package:fresh_herbs_fruit_project/1_model/Intro/introdummy.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> introData = IntroDummyData.introData;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Introduction',
          style: GoogleFonts.sansita(color: AppColors.textColor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var data in introData)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data['title']!,
                    style: GoogleFonts.sansita(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: AppColors.PagetitleColor,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    data['text']!,
                    style: GoogleFonts.sansita(
                      fontSize: 13,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
