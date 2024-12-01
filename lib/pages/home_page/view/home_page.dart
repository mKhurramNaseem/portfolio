import 'package:flutter/material.dart';
import 'package:portfolio/pages/home_page/view/home_page_mobile.dart';
import 'package:portfolio/pages/home_page/view/home_page_web.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.sizeOf(context).width > 900) {
      return const HomePageWeb();
    }
    return const HomePageMobile();
  }
}
