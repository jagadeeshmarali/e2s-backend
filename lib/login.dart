import 'package:flutter/material.dart';

class LoginStudent extends StatelessWidget {
  void _handleLogin(BuildContext context) {
    // Navigate to StudentCasesPage when login button is pressed
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StudentCasesPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_image.png'),
            fit: BoxFit.cover, // Cover the entire container
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Login Details',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(14, 14, 14, 1),
                  fontFamily: 'Gothic A1',
                  fontSize: 26,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1.2307692307692308,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Username',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(14, 14, 14, 1),
                          fontFamily: 'Gothic A1',
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1.5,
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Password',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(14, 14, 14, 1),
                          fontFamily: 'Gothic A1',
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1.5,
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  _handleLogin(context); // Call the login function
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(155, 63, 191, 1),
                  onPrimary: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Color.fromRGBO(14, 14, 14, 1),
                      fontFamily: 'Gothic A1',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StudentCasesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Cases Page'),
      ),
      body: Center(
        child: Text('Welcome to Student Cases Page!'),
      ),
    );
  }
}
