import 'package:flutter/material.dart';

showLoading(GlobalKey<ScaffoldState> scaffoldState) async {
  await showDialog(
      context: scaffoldState.currentContext,
      builder: (_) => AlertDialog(
          title: Row(
              children: [CircularProgressIndicator()],
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max)));
}

showErrorResponse(GlobalKey<ScaffoldState> scaffoldState, String error) {
  scaffoldState.currentState.showSnackBar(SnackBar(
      content: Text(error, style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.redAccent));
}

showSuccessResponse(GlobalKey<ScaffoldState> scaffoldState, String error) {
  scaffoldState.currentState.showSnackBar(SnackBar(
      content: Text(error, style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.greenAccent));
}
