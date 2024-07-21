import 'package:flutter/material.dart';
import 'package:fresh_herbs_fruit_project/Utils/colors.dart';
import 'package:fresh_herbs_fruit_project/1_model/Herb/ayruvedicdummy.dart';
import 'package:fresh_herbs_fruit_project/screens/detailspage/ayurvedicdetails.dart';
import 'package:google_fonts/google_fonts.dart';

class Ayrvedic_Herb extends StatefulWidget {
  @override
  _Ayrvedic_HerbState createState() => _Ayrvedic_HerbState();
}

class _Ayrvedic_HerbState extends State<Ayrvedic_Herb> {
  final Map<String, WidgetBuilder> routes = {
    "Ashwagandha": (context) => AshwagandhaDetailPage(),
    "Licorice": (context) => LicoriceDetailPage(),
    "Brahmi": (context) => BrahmiDetailPage(),
    "Ginger": (context) => GingerDetailPage(),
    "Turmeric": (context) => TurmericDetailPage(),
    "Cumin": (context) => CuminDetailPage(),
    "Cardamom": (context) => CardamomDetailPage(),
    "Tulsi": (context) => TulsiDetailPage(),
    "Amla": (context) => AmlaDetailPage(),
    "Triphala": (context) => TriphalaDetailPage(),
    "Ajwain": (context) => AjwainDetailPage(),
    "Boswellia": (context) => BoswelliaDetailPage(),
    "Neem": (context) => NeemDetailPage(),
    "Moringa": (context) => MoringaDetailPage(),
    "Shatavari": (context) => ShatavariDetailPage(),
  };

  late List<Map<String, String>> filteredData;
  late TextEditingController searchController;

  @override
  void initState() {
    super.initState();
    filteredData = AyurDummyData.cateData;
    searchController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Ayurvedic Herbs",
          style: GoogleFonts.sansita(color: AppColors.textColor),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            width: 500,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(horizontal: 18),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: searchController,
                    onChanged: (value) {
                      setState(() {
                        filteredData = AyurDummyData.cateData
                            .where((cate) => cate["text"]!
                                .toLowerCase()
                                .contains(value.toLowerCase()))
                            .toList();
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Search...",
                      hintStyle: GoogleFonts.sansita(
                          color: AppColors.searchFieldTextColor, fontSize: 15),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: filteredData.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    String text = filteredData[index]["text"]!;
                    if (routes.containsKey(text)) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: routes[text]!),
                      );
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.categoryCardColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(6)),
                                child: Image.network(
                                  filteredData[index]["image"]!,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            alignment: Alignment.center,
                            child: Text(
                              filteredData[index]["text"]!,
                              style: GoogleFonts.sansita(
                                color: AppColors.categoryCardTextColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
