import 'package:flutter/material.dart';

class HpExpertiseSkills extends StatelessWidget {
  const HpExpertiseSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 12,
            ),
            Expanded(
              flex: 25,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 25,
              child: Container(
                decoration: const BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 25,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
              ),
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
