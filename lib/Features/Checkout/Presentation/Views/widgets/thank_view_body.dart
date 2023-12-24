import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Stack(
        children: [
          Container(
            decoration: ShapeDecoration(
              color: const Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height*0.2,
            child: CircleAvatar(backgroundColor: Colors.white,),),
            Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height*0.2,
            child: CircleAvatar(backgroundColor: Colors.white,),),
        ],
      ),
    );
  }
}
