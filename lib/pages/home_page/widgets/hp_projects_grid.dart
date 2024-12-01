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
          return InkWell(
            onHover: (value) {},
            mouseCursor: MouseCursor.defer,
            child: Card(
              elevation: 20,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              color: Colors.grey.shade900,
              child: Column(
                children: [
                  Expanded(
                    flex: 70,
                    child: Image.asset(
                      'assets/images/bg_single_sided.jpg',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Expanded(
                    flex: 15,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: LayoutBuilder(builder: (context, constraints) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Flight Local (B2B Travel Solution)',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: constraints.maxHeight * 0.35,
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: LayoutBuilder(builder: (context, constraints) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Web Development',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: constraints.maxHeight * 0.38,
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  const Spacer(
                    flex: 5,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
