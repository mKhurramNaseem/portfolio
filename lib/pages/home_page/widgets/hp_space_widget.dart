import 'package:flutter/material.dart';

class HpSpaceWidget extends StatelessWidget {
  final double heightPercent;
  const HpSpaceWidget({super.key , required this.heightPercent,});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return SliverToBoxAdapter(
                child: SizedBox(
                  height: height * heightPercent,
                ),
              );
  }
}