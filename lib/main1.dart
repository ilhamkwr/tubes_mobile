import 'package:flutter/material.dart';
import 'package:tubes_mobile/screens/login_view.dart';
import 'package:tubes_mobile/screens/register_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Login Register Page",
    initialRoute: "/",
    routes: {
      "/" : (context) => LoginPage(),
      RegisterPage.routeName : (context) => RegisterPage(),
    },
  ));
}
