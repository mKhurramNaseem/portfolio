import 'package:flutter/material.dart';

class HpHeaderTitle extends StatelessWidget {
  const HpHeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Stack(
          children: [
            Positioned.fill(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/bg_single_sided.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.black,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.6, 1.0],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'KHURAM NASEEM',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: MediaQuery.sizeOf(context).height * 0.1,
                      letterSpacing: 6,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'SOFTWARE ENGINEER, FRONT END & APP DEVELOPER. ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: MediaQuery.sizeOf(context).height * 0.03,
                      letterSpacing: 6,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
