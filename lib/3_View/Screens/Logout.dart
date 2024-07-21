import 'package:flutter/material.dart';
import 'package:fresh_herbs_fruit_project/3_View/Firebase_Helper/firebase_helper.dart';
import 'package:fresh_herbs_fruit_project/3_View/Screens/3_Login.dart';
import 'package:fresh_herbs_fruit_project/Utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Profile(),
  ));
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: GoogleFonts.sansita(fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            FirebaseHelper()
                .LogOut()
                .then((value) => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                      (Route<dynamic> route) => false,
                    ));
          },
          color: AppColors.primaryColor,
          shape: StadiumBorder(),
          height: 50,
          minWidth: 200,
          child: Text(
            "SIGN-OUT",
            style: GoogleFonts.sansita(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
