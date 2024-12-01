import 'package:flutter/material.dart';

class HpWorkText extends StatelessWidget {
  const HpWorkText({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.6,
        child: Row(
          children: [
            const Spacer(
              flex: 12,
            ),
            Expanded(
              flex: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 25,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'My Work',
                        style: TextStyle(
                          fontSize: MediaQuery.sizeOf(context).height * 0.09,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 10,
                  ),
                  Expanded(
                    flex: 70,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Deployed scalable travel, event and telemedicine web and hybrid mobile apps using Flutter and Dart.\nCollaborated in 140+ projects with 50+ clients all around the world. I am also interested in data analytics and visualization.',
                        maxLines: 10,
                        style: TextStyle(
                          fontSize: MediaQuery.sizeOf(context).height * 0.03,
                          letterSpacing: 2,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 3,
            ),
            Expanded(
              flex: 40,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('assets/images/robot.png'),
              ),
            ),
            const Spacer(
              flex: 5,
            ),
          ],
        ),
      ),
    );
  }
}
