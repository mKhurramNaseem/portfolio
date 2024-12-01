import 'package:flutter/material.dart';

class HppProjectsList extends StatelessWidget {
  const HppProjectsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      sliver: SliverList.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.45,
            child: const Card(
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
            ),
          );
        },
      ),
    );
  }
}
