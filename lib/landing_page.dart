import 'package:flutter/material.dart';
import 'dart:ui';
import 'signup.dart';
import 'login.dart'; // Assuming you have a LoginStudent class in this file

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double fem = 1.0; // Adjust these values as needed for proper sizing
    double ffem = 1.0; // Adjust these values as needed for proper sizing

    return Scaffold(
      backgroundColor: Color(0xff191919),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.start, // Aligns widgets to the top
          children: [
            SizedBox(height: 32 * fem), // Added space at the top
            Positioned(
              left: 0 * fem,
              top: 44 * fem,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 12 * fem,
                    sigmaY: 12 * fem,
                  ),
                  child: Container(
                    width: 390 * fem,
                    height: 76 * fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Equation2Success',
                          style: TextStyle(
                            fontFamily: 'Gothic A1',
                            fontSize: 26 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2307692308 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                        Text(
                          'Let’s Revolutionize education!',
                          style: TextStyle(
                            fontFamily: 'Gothic A1',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16 * fem), // Adjust this value as needed
            Container(
              margin: EdgeInsets.only(bottom: 32 * fem),
              width: 316 * fem,
              height: 141 * fem,
              child: Image.asset(
                'assets/equation2success.png', // Replace with actual image path
                fit: BoxFit.cover,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xff9b3fbf),
                padding: EdgeInsets.symmetric(
                    horizontal: 24 * fem, vertical: 12 * ffem),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      24 * fem), // Adjust these values as needed
                ),
              ),
              child: Text(
                'SIGNUP',
                style: TextStyle(
                  fontFamily: 'Gothic A1',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            SizedBox(height: 16 * fem), // Adjust this value as needed
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginStudent()));
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xff9b3fbf),
                padding: EdgeInsets.symmetric(
                    horizontal: 24 * fem, vertical: 12 * ffem),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      24 * fem), // Adjust these values as needed
                ),
              ),
              child: Text(
                'LOGIN',
                style: TextStyle(
                  fontFamily: 'Gothic A1',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
