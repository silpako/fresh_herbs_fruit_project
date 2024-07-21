import 'package:flutter/material.dart';
import 'package:fresh_herbs_fruit_project/Utils/colors.dart';
import 'package:fresh_herbs_fruit_project/1_model/Herb/lastPageAyurvedic.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String uses;

  const DetailPage({
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

class AshwagandhaDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> ashwagandhaData = LastDummyData.ayurData[0];

    return DetailPage(
      image: ashwagandhaData['image']!,
      title: ashwagandhaData['title']!,
      description: ashwagandhaData['description']!,
      uses: ashwagandhaData['uses']!,
    );
  }
}

class LicoriceDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> LicoriceData = LastDummyData.ayurData[1];

    return DetailPage(
      image: LicoriceData['image']!,
      title: LicoriceData['title']!,
      description: LicoriceData['description']!,
      uses: LicoriceData['uses']!,
    );
  }
}

class BrahmiDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> BrahmiData = LastDummyData.ayurData[2];

    return DetailPage(
      image: BrahmiData['image']!,
      title: BrahmiData['title']!,
      description: BrahmiData['description']!,
      uses: BrahmiData['uses']!,
    );
  }
}

class GingerDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> GingerData = LastDummyData.ayurData[3];

    return DetailPage(
      image: GingerData['image']!,
      title: GingerData['title']!,
      description: GingerData['description']!,
      uses: GingerData['uses']!,
    );
  }
}

class TurmericDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> TurmericData = LastDummyData.ayurData[4];

    return DetailPage(
      image: TurmericData['image']!,
      title: TurmericData['title']!,
      description: TurmericData['description']!,
      uses: TurmericData['uses']!,
    );
  }
}

class CuminDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> CuminData = LastDummyData.ayurData[5];

    return DetailPage(
      image: CuminData['image']!,
      title: CuminData['title']!,
      description: CuminData['description']!,
      uses: CuminData['uses']!,
    );
  }
}

class CardamomDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> CardamomData = LastDummyData.ayurData[6];

    return DetailPage(
      image: CardamomData['image']!,
      title: CardamomData['title']!,
      description: CardamomData['description']!,
      uses: CardamomData['uses']!,
    );
  }
}

class TulsiDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> TulsiData = LastDummyData.ayurData[7];

    return DetailPage(
      image: TulsiData['image']!,
      title: TulsiData['title']!,
      description: TulsiData['description']!,
      uses: TulsiData['uses']!,
    );
  }
}

class AmlaDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> AmlaData = LastDummyData.ayurData[8];

    return DetailPage(
      image: AmlaData['image']!,
      title: AmlaData['title']!,
      description: AmlaData['description']!,
      uses: AmlaData['uses']!,
    );
  }
}

class TriphalaDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> TriphalaData = LastDummyData.ayurData[9];

    return DetailPage(
      image: TriphalaData['image']!,
      title: TriphalaData['title']!,
      description: TriphalaData['description']!,
      uses: TriphalaData['uses']!,
    );
  }
}

class AjwainDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> AjwainData = LastDummyData.ayurData[10];

    return DetailPage(
      image: AjwainData['image']!,
      title: AjwainData['title']!,
      description: AjwainData['description']!,
      uses: AjwainData['uses']!,
    );
  }
}

class BoswelliaDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> BoswelliaData = LastDummyData.ayurData[11];

    return DetailPage(
      image: BoswelliaData['image']!,
      title: BoswelliaData['title']!,
      description: BoswelliaData['description']!,
      uses: BoswelliaData['uses']!,
    );
  }
}

class NeemDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> NeemData = LastDummyData.ayurData[12];

    return DetailPage(
      image: NeemData['image']!,
      title: NeemData['title']!,
      description: NeemData['description']!,
      uses: NeemData['uses']!,
    );
  }
}

class MoringaDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> MoringaData = LastDummyData.ayurData[13];

    return DetailPage(
      image: MoringaData['image']!,
      title: MoringaData['title']!,
      description: MoringaData['description']!,
      uses: MoringaData['uses']!,
    );
  }
}

class ShatavariDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> ShatavariData = LastDummyData.ayurData[14];

    return DetailPage(
      image: ShatavariData['image']!,
      title: ShatavariData['title']!,
      description: ShatavariData['description']!,
      uses: ShatavariData['uses']!,
    );
  }
}
