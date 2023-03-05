// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double animationsSize = screenWidth / 2.5;
    return  Center(
      child: SizedBox(
        width: animationsSize,
        height: animationsSize,
        child: Center(
          child: Lottie.asset(
            'assets/animations/home.json',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
