import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HyperLink extends StatelessWidget {
  final String linkText;
  final String routeName;

  const HyperLink({Key key, this.linkText, this.routeName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Text(linkText ?? "", style: TextStyle(color: Colors.blue)),
    );
  }
}
