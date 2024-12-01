import 'package:flutter/material.dart';

class HpProjectsGrid extends StatelessWidget {
  const HpProjectsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.12),
      sliver: SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 25, crossAxisCount: 3),
        itemCount: 3,
        itemBuilder: (context, index) {
          return const Card(
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
            ),
            color: Colors.grey,
            child: Column(
              children: [],
            ),
          );
        },
      ),
    );
  }
}
