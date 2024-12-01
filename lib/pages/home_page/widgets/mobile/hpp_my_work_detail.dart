import 'package:flutter/material.dart';

class HppMyWorkDetail extends StatelessWidget {
  const HppMyWorkDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          'Deployed scalable travel, event and telemedicine web and hybrid mobile apps using Flutter and Dart.\nCollaborated in 140+ projects with 50+ clients all around the world. I am also interested in data analytics and visualization.',
          maxLines: 10,
          style: TextStyle(
            fontSize: MediaQuery.sizeOf(context).height * 0.02,
            letterSpacing: 2,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
