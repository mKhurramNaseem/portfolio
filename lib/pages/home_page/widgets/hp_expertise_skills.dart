import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            for (int i = 0; i < 3; i++)
              Expanded(
                flex: 25,
                child: Container(
                  padding: const EdgeInsets.all(40.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 20.0),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 50,
                          child: LayoutBuilder(builder: (context, constraints) {
                            return Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(
                                    FontAwesomeIcons.flutter,
                                    color: Colors.white,
                                    size: constraints.maxHeight * 0.4,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Flutter Dev\nAndroid, ios',
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: constraints.maxHeight * 0.25),
                                  ),
                                ),
                              ],
                            );
                          }),
                        ),
                        const Expanded(
                          flex: 50,
                          child: Row(
                            children: [
                              Spacer(
                                flex: 15,
                              ),
                              Expanded(
                                flex: 75,
                                child: Text(
                                  'Skilled in developing hybrid mobile apps and cross-platform solutions using Flutter framework.',
                                  style: TextStyle(
                                      color: Colors.white, letterSpacing: 1),
                                ),
                              ),
                              Spacer(
                                flex: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
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
