import 'package:flutter/material.dart';

class HppExpertiseText extends StatelessWidget {
  const HppExpertiseText({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Text(
        'My Expertise',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: MediaQuery.sizeOf(context).height * 0.06,
          letterSpacing: 2,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
