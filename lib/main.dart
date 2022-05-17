import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toko_gitar/Screens/Login/LoginScreens.dart';
import 'package:toko_gitar/routes.dart';
import 'package:toko_gitar/theme.dart';

void main() async {
  runApp(
    MaterialApp(
      title: "Toko Gitar Keren",
      theme: theme(),
      initialRoute: LoginScreens.routerName,
      routes: routes,
    )
  );
}