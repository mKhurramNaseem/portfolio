import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HppExperienceTile extends StatelessWidget {
  const HppExperienceTile({super.key});

  @override
  Widget build(BuildContext context) {
    double begin = 0, end = 1;
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      sliver: SliverToBoxAdapter(
        child: StatefulBuilder(builder: (context, setState) {
          return Column(
            children: [
              ListTile(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                tileColor: Colors.cyan,
                title: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Software Engineer @ CAS',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                trailing: GestureDetector(
                  onTap: () {
                    setState(() {
                      begin = begin == 0 ? 1 : 0;
                      end = end == 0 ? 1 : 0;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      begin == 0 ? Icons.remove : Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 360,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  color: Colors.cyan.shade900,
                ),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Expanded(
                      flex: 28,
                      child: Row(
                        children: [
                          Expanded(flex: 20, child: Placeholder()),
                          Spacer(
                            flex: 80,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(
                      flex: 5,
                    ),
                    const Expanded(
                      flex: 8,
                      child: Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.cyan),
                          Text(
                            ' Bahawalpur, Pakistan',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const Expanded(
                      flex: 8,
                      child: Row(
                        children: [
                          Icon(Icons.add_box, color: Colors.cyan),
                          Text(
                            ' cas.org.pk',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const Expanded(
                      flex: 21,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 80,
                            child: Text(
                              'Developing front-end and mobile app solutions (B2B, B2C) in Travel Tech on Flutter SDK',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 20,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    Expanded(
                      flex: 23,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 80,
                            child: Wrap(
                              runSpacing: 5,
                              spacing: 5,
                              children: [
                                Chip(
                                  label: const Text(
                                    'Dart',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  backgroundColor: Colors.cyan.shade600,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        20.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Chip(
                                  label: const Text(
                                    'Flutter',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  backgroundColor: Colors.cyan.shade600,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        20.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Chip(
                                  label: const Text(
                                    'Firebase',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  backgroundColor: Colors.cyan.shade600,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        20.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Chip(
                                  label: const Text(
                                    'Firebase',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  backgroundColor: Colors.cyan.shade600,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        20.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Chip(
                                  label: const Text(
                                    'Firebase',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  backgroundColor: Colors.cyan.shade600,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        20.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(
                            flex: 20,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                  ],
                ),
              ).animate().scaleY(
                  begin: begin,
                  end: end,
                  duration: const Duration(milliseconds: 300)),
              const SizedBox(
                height: 20,
              ),
            ],
          );
        }),
      ),
    );
  }
}
