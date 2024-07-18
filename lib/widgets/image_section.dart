import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Image.asset(
        'assets/phone.png',
        height: 100,
      ),
    );
  }
}
