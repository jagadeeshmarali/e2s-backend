import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  double fem = 1.0;
  double ffem = 1.0;
  String searchQuery = "";
  List<String> roles = [
    'STUDENT',
    'PARENT',
    'TEACHER',
    'SCHOOL ADMINISTRATOR',
    'PRINCIPAL',
    'EQUATION2SUCCESS ADMIN',
    'CURRICULUM ASSOCIATE',
  ];

  List<String> filteredRoles() {
    return roles.where((role) {
      return role.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(16 * fem, 24 * fem, 16 * fem, 24 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontFamily: 'Gothic A1',
                      fontSize: 26 * ffem,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0e0e0e),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.search, color: Colors.black),
                        onPressed: () {
                          showSearch(
                            context: context,
                            delegate: CustomSearchDelegate(onSearch: (query) {
                              setState(() {
                                searchQuery = query;
                              });
                              Navigator.pop(context);
                            }),
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert, color: Colors.black),
                        onPressed: () {
                          // Handle settings action
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10 * fem),

            for (String role in filteredRoles())
              _buildRoleContainer(
                role: role,
                onTap: () {
                  // Perform action for role
                },
              ),
            SizedBox(height: 10 * fem),
          ],
        ),
      ),
    );
  }

  Widget _buildRoleContainer({required String role, required Function onTap}) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(16 * fem, 36.14 * fem, 21 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              role,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Gothic A1',
                fontSize: 16 * ffem,
                fontWeight: FontWeight.w600,
                height: 1.5 * ffem / fem,
                color: Color(0xff0e0e0e),
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.black),
          ],
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate<String> {
  final ValueChanged<String> onSearch;

  CustomSearchDelegate({required this.onSearch});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.close),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(); // Implement your search results view here
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container(); // Implement your suggestions view here
  }
}
