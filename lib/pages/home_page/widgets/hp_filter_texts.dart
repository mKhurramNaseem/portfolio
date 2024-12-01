import 'package:flutter/material.dart';

class HpFilterTexts extends StatelessWidget {
  const HpFilterTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.05,
        child: Row(
          children: [
            const Spacer(
              flex: 12,
            ),
            Expanded(
              flex: 76,
              child: LayoutBuilder(builder: (context, constraints) {
                return Text(
                  'Filter by All / Data Visualization / Web Development',
                  maxLines: 10,
                  style: TextStyle(
                      fontSize: constraints.maxHeight * 0.5,
                      color: Colors.grey,
                      fontWeight: FontWeight.w800),
                );
              }),
            ),
            const Spacer(
              flex: 12,
            ),
          ],
        ),
      ),
    );
  }
}
