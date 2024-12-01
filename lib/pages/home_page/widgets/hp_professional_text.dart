import 'package:flutter/material.dart';

class HpProfessionalText extends StatelessWidget {
  const HpProfessionalText({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Text(
        'Professional\nExperience',
        maxLines: 2,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: MediaQuery.sizeOf(context).height * 0.09,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
