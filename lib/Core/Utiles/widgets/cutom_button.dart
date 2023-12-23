import 'package:flutter/material.dart';
import 'package:payment_app/Core/Utiles/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 73,
        decoration: ShapeDecoration(
          color: const Color(0xFF34A853),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: const Center(
          child: Text('Complete Payment',
              textAlign: TextAlign.center, style: Styles.textStyle22),
        ),
      ),
    );
  }
}
