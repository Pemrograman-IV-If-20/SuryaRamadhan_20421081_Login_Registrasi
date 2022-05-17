import 'package:flutter/cupertino.dart';
import 'package:toko_gitar/Screens/Login/LoginScreens.dart';
import 'package:toko_gitar/Screens/Register/RegistrasiScreens.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreens.routerName : (context) => LoginScreens(),
  RegistrasiScreens.routerName:(context) => RegistrasiScreens()
};