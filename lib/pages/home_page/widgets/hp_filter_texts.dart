import 'package:flutter/material.dart';

class HpFilterTexts extends StatelessWidget {
  const HpFilterTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Row(
        children: [
          Spacer(
            flex: 12,
          ),
          Expanded(
            flex: 76,
            child: Text(
              'Filter by All / Data Visualization / Web Development',
              maxLines: 10,
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Spacer(
            flex: 12,
          ),
        ],
      ),
    );
  }
}
