import 'package:flutter/material.dart';
import 'package:payment_app/Core/Utiles/styles.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('My Cart',
        textAlign: TextAlign.center,
        style: Styles.textStyle25,
      ),)
    );
  }
}