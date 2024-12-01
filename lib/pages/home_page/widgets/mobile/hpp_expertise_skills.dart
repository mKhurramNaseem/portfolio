import 'package:flutter/material.dart';

class HppExpertiseSkills extends StatelessWidget {
  const HppExpertiseSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.45,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
