import 'package:flutter/material.dart';
import 'package:orthodentist/string_constant.dart';
import 'package:orthodentist/widgets/hyperlink.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _emailController;
  TextEditingController _passwordController;
  TextEditingController _mobileNumberController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _mobileNumberController = TextEditingController();
    super.initState();
  }

  Widget navigateToSignUpPage() {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
            children: [
              Text("Don't have an account? "),
              HyperLink(linkText: "Sign Up", routeName: SIGN_UP)
            ],
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: DefaultTabController(
                length: 2,
                child: Scaffold(
                    body: Column(mainAxisSize: MainAxisSize.min, children: [
                  Expanded(child: Icon(Icons.ac_unit_rounded, size: 128.0)),
                  SizedBox(
                      height: 48.0,
                      child: AppBar(
                          bottom: TabBar(tabs: [
                        Tab(
                            icon: Icon(Icons.quick_contacts_dialer_outlined,
                                color: Colors.white)),
                        Tab(icon: Icon(Icons.mail_outline, color: Colors.white))
                      ]))),
                  Expanded(
                      flex: 2,
                      child: TabBarView(children: [
                        SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Container(
                                margin: EdgeInsets.all(16.0),
                                child: Form(
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                      Row(
                                          children: [
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 16.0, bottom: 8.0),
                                                child: Text("Log In",
                                                    style: TextStyle(
                                                        fontSize: 32.0,
                                                        fontWeight:
                                                            FontWeight.bold)))
                                          ],
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start),
                                      Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                              controller:
                                                  _mobileNumberController,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  labelText: "Contact Number",
                                                  prefix: Text("+91")),
                                              keyboardType:
                                                  TextInputType.number)),
                                      Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                              controller: _passwordController,
                                              obscureText: true,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  labelText: "Password"))),
                                      SizedBox(height: 32.0),
                                      MaterialButton(
                                          onPressed: () => {},
                                          child: Text("Login",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          color: Colors.blue),
                                      navigateToSignUpPage()
                                    ])))),
                        SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Container(
                                margin: EdgeInsets.all(16.0),
                                child: Form(
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                      Row(
                                          children: [
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 16.0, bottom: 8.0),
                                                child: Text("Log In",
                                                    style: TextStyle(
                                                        fontSize: 32.0,
                                                        fontWeight:
                                                            FontWeight.bold)))
                                          ],
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start),
                                      Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                              controller: _emailController,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  labelText: "Email"),
                                              keyboardType:
                                                  TextInputType.emailAddress)),
                                      Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                              controller: _passwordController,
                                              obscureText: true,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  labelText: "Password"))),
                                      SizedBox(height: 32.0),
                                      MaterialButton(
                                          onPressed: () => {},
                                          child: Text("Login",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          color: Colors.blue),
                                      navigateToSignUpPage()
                                    ])))),
                      ]))
                ])))));
  }
}
