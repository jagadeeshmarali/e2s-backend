import 'package:flutter/material.dart';

class SignUpParent extends StatefulWidget {
  const SignUpParent({super.key});

  @override
  State<SignUpParent> createState() => _SignUpParentState();
}

class _SignUpParentState extends State<SignUpParent> {
  final name = TextEditingController();
  final email = TextEditingController();
  var username = "";
  final phonenumber = TextEditingController();
  String? ethnicity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              "Sign Up",
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            backgroundColor: Colors.white),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 20),
                    child: Text("INPUT DETAILS"),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Full Name: ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 0.09,
                          ),
                        ),
                        TextFormField(
                          controller: name,
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: "Enter Full Name"),
                          onChanged: (val) {
                            var id = DateTime.now()
                                .millisecondsSinceEpoch
                                .toString();
                            setState(() {
                              username = val + id;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "User Name: ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 0.09,
                          ),
                        ),
                        Text(username)
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Email Id: ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 0.09,
                          ),
                        ),
                        TextFormField(
                          controller: email,
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: "Enter Email Id"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Phone Number: ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 0.09,
                          ),
                        ),
                        TextFormField(
                          controller: phonenumber,
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: "Enter Phone Number"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Ethnicity: ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 0.09,
                          ),
                        ),
                        DropdownButtonFormField(
                            value: ethnicity,
                            items: const [
                              DropdownMenuItem(
                                value: "asian",
                                child: Text("Asian"),
                              )
                            ],
                            onChanged: (v) {
                              ethnicity = v;
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Password: ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 0.09,
                          ),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: "Enter Password"),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                        ),
                        onPressed: () {
                          // Call the SignUp Function
                        },
                        child: const Text("SIGN UP"),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
