 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/Core/Utiles/styles.dart';

AppBar buildAppBar(String title) {
    return AppBar(
    backgroundColor: Colors.transparent,
    leading: Center(
      child: SvgPicture.asset(
        'assets/images/Arrow 1.svg',
        
      ),
    ),
    elevation: 0,
    centerTitle: true,
    title:  Text(
      title,
      textAlign: TextAlign.center,
      style: Styles.textStyle25,
    ),
  );
  }
