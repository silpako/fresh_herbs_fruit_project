import 'package:flutter/material.dart';
import 'package:fresh_herbs_fruit_project/Utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DisclaimerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Disclaimer',
          style: GoogleFonts.sansita(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Text(
              'Always check with your health care professional before using herbs or herbal products! Do not use herbal products of any kind if you are nursing, pregnant, taking medications or undergoing treatment for any medical condition without first consulting your health care professional.',
              style: GoogleFonts.sansita(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
