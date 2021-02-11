import 'package:flutter/material.dart';
import 'package:orthodentist/network/api_call_handler.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldState,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.ac_unit_rounded, size: 128.0),
                  Container(
                      margin: EdgeInsets.all(16.0),
                      child: Form(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                            Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16.0, bottom: 8.0),
                                      child: Text("Sign Up",
                                          style: TextStyle(
                                              fontSize: 32.0,
                                              fontWeight: FontWeight.bold)))
                                ],
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: "First Name"),
                                    keyboardType: TextInputType.text)),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: "Last Name"),
                                    keyboardType: TextInputType.text)),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: "Email"),
                                    keyboardType: TextInputType.emailAddress)),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: "Contact",
                                        prefix: Text("+91")),
                                    keyboardType: TextInputType.text)),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    maxLines: 2,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: "Address"),
                                    keyboardType: TextInputType.text)),
                            SizedBox(height: 32.0),
                            MaterialButton(
                                minWidth: 128.0,
                                onPressed: () async => {
                                      await ApiCallHandler.post(
                                          _scaffoldState, "https://www.google.com", "", {})
                                    },
                                child: Text("Sign Up",
                                    style: TextStyle(color: Colors.white)),
                                color: Colors.blue)
                          ]))),
                ]),
          ),
        ));
  }
}
