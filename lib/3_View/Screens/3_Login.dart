import 'package:flutter/material.dart';
import 'package:fresh_herbs_fruit_project/3_View/Firebase_Helper/firebase_helper.dart';
import 'package:fresh_herbs_fruit_project/3_View/Screens/4_Registration.dart';
import 'package:fresh_herbs_fruit_project/3_View/Screens/Logout.dart';
import 'package:fresh_herbs_fruit_project/Utils/colors.dart';
import 'package:fresh_herbs_fruit_project/screens/views/category.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;
  final L_uname = TextEditingController();
  final L_pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  "Log In",
                  style: GoogleFonts.sansita(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  "Hi! Welcome back, you've been missed",
                  style: GoogleFonts.sansita(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Email",
                style: GoogleFonts.sansita(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: L_uname,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide.none),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Password",
                style: GoogleFonts.sansita(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: L_pass,
                cursorColor: Colors.black,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide.none),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    final email = L_uname.text.trim();
                    final passwd = L_pass.text.trim();
                    FirebaseHelper()
                        .login(email: email, password: passwd)
                        .then((value) => {
                              if (value == null)
                                {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CategoryHerb()))
                                }
                              else
                                {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text(value)))
                                }
                            });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    minimumSize: Size(250, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    "Login",
                    style: GoogleFonts.sansita(
                        fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style:
                        GoogleFonts.sansita(color: Colors.black, fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Registration()));
                    },
                    child: Text(
                      "Register here",
                      style: GoogleFonts.sansita(
                          color: AppColors.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
