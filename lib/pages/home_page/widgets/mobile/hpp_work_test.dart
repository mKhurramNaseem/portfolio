import 'package:flutter/material.dart';

class HppWorkTest extends StatelessWidget {
  const HppWorkTest({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          'My Work',
          style: TextStyle(
            fontSize: MediaQuery.sizeOf(context).height * 0.06,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
