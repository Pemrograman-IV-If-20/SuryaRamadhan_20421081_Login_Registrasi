

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toko_gitar/Components/Login/LoginComponen.dart';
import 'package:toko_gitar/size_config.dart';

class LoginScreens extends StatelessWidget {
  static String routerName = "/sign_in";

  @override
  Widget build(BuildContext context){
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: LoginComponent(),
    );
  }
}