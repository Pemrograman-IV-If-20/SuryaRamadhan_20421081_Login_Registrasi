

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toko_gitar/Components/costume_surfix_icon.dart';
import 'package:toko_gitar/Components/default_button_costume_color.dart';
import 'package:toko_gitar/Screens/Register/RegistrasiScreens.dart';
import 'package:toko_gitar/size_config.dart';
import 'package:toko_gitar/utils/constants.dart';

class SignInForm extends StatefulWidget{
  @override
  _SignInForm createState() => _SignInForm();

}

class _SignInForm extends State<SignInForm>{

  final _fromKey = GlobalKey<FormState>();
  String? username ;
  String? password ;
  bool? remeber = false ;

  TextEditingController txtUserName = TextEditingController(),
    txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildUserName(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(value: remeber,
              onChanged: (value){
                setState(() {
                  remeber = value;
                });
              }),
              Text("Tetap Masuk"),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text("Lupa Password",style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          DefaultButtonCustomeColor(
            color: kPrimaryColor,
            text: "Masuk",
            press: () {},
          ),
          SizedBox(height: 20,),
          GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RegistrasiScreens.routerName);
                },
                child: Text("Belum Memiliki Akun ? Klik Di Sini",
                style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
        ],
        )
        );
  }

  TextField buildUserName() {
    return TextField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText:"Ussername",
        hintText: "Masukan Username Anda",
        labelStyle: TextStyle(
          color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon:"assets/icons/User.svg",
            ),
      ),
    );
  }
  TextField buildPassword() {
    return TextField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText:"Password",
        hintText: "Masukan Password Anda",
        labelStyle: TextStyle(
          color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon:"assets/icons/User.svg",
            ),
      ),
    );
  }
}