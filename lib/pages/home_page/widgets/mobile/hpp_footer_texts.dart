import 'package:flutter/material.dart';

class HppAvailableText extends StatelessWidget {
  const HppAvailableText({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          'Available for select freelance opportunities',
          textAlign: TextAlign.center,
          style: TextStyle(
            letterSpacing: 2,
            color: Colors.white,
            fontSize: MediaQuery.sizeOf(context).height * 0.035,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class HppContactText extends StatelessWidget {
  const HppContactText({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      sliver: SliverToBoxAdapter(
        child: Text(
          'Have an exciting project you need to help with?\nSend me email or contact me via instant message!',
          textAlign: TextAlign.center,
          style: TextStyle(
            letterSpacing: 2,
            color: Colors.white,
            fontSize: MediaQuery.sizeOf(context).height * 0.025,
          ),
        ),
      ),
    );
  }
}

class HppEmailText extends StatelessWidget {
  const HppEmailText({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Text(
        'mail@khuram.dev',
        textAlign: TextAlign.center,
        style: TextStyle(
          letterSpacing: 2,
          color: Colors.white,
          fontSize: MediaQuery.sizeOf(context).height * 0.035,
          decoration: TextDecoration.underline,
          decorationColor: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class HppSocialTexts extends StatelessWidget {
  final String text;
  const HppSocialTexts({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: MediaQuery.sizeOf(context).height * 0.03,
        ),
      ),
    );
  }
}
