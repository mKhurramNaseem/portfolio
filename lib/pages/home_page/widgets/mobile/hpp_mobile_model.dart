import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

class HppMobileModel extends StatelessWidget {
  const HppMobileModel({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.5,
        child: const Flutter3DViewer(
            src: 'assets/models_3d/low_poly_mobile_phone.glb'),
      ),
    );
  }
}
