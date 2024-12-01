import 'package:flutter/material.dart';

class HpExpertiseText extends StatelessWidget {
  const HpExpertiseText({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Text(
        'My Expertise',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: MediaQuery.sizeOf(context).height * 0.09,
          letterSpacing: 2,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
