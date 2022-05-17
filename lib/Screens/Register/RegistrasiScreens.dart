

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toko_gitar/Components/Register/RegistrasiComponen.dart';
import 'package:toko_gitar/size_config.dart';

class RegistrasiScreens extends StatelessWidget {
  static String routerName = "/sign_up";

  @override
  Widget build(BuildContext context){
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: RegistrasiComponent(),
    );
  }
}