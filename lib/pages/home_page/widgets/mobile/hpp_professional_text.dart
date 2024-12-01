import 'package:flutter/material.dart';

class HppProfessionalText extends StatelessWidget {
  const HppProfessionalText({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Text(
        'Professional\nExperience',
        maxLines: 2,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: MediaQuery.sizeOf(context).height * 0.06,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}