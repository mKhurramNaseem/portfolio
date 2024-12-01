import 'package:flutter/material.dart';

class HppMobileModel extends StatelessWidget {
  const HppMobileModel({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.5,
        child: Image.asset('assets/images/robot.png'),
      ),
    );
  }
}
