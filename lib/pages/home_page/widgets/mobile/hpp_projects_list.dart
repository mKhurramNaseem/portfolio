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
                    flex: 80,
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/bg_single_sided.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 10,
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
                              fontSize: constraints.maxHeight * 0.5,
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
                        return const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Web Development',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        );
                      }),
                    ),
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
