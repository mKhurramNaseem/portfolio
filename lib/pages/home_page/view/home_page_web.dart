import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/home_page/widgets/hp_expertise_skills.dart';
import 'package:portfolio/pages/home_page/widgets/hp_expertise_text.dart';
import 'package:portfolio/pages/home_page/widgets/hp_filter_texts.dart';
import 'package:portfolio/pages/home_page/widgets/hp_footer_texts.dart';
import 'package:portfolio/pages/home_page/widgets/hp_header_title.dart';
import 'package:portfolio/pages/home_page/widgets/hp_projects_grid.dart';
import 'package:portfolio/pages/home_page/widgets/hp_space_widget.dart';
import 'package:portfolio/pages/home_page/widgets/hp_work_text.dart';

class HomePageWeb extends StatefulWidget {
  const HomePageWeb({super.key});

  @override
  State<HomePageWeb> createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(
      () {
        setState(() {});
      },
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: [
            Scrollbar(
              interactive: true,
              controller: scrollController,
              thumbVisibility: true,
              trackVisibility: true,
              child: CustomScrollView(
                controller: scrollController,
                slivers: const [
                  // Title
                  HpHeaderTitle(),
                  HpSpaceWidget(
                    heightPercent: 0.1,
                  ),
                  // Expertise Text
                  HpExpertiseText(),
                  HpSpaceWidget(
                    heightPercent: 0.1,
                  ),
                  // Expertise Skills
                  HpExpertiseSkills(),
                  HpSpaceWidget(
                    heightPercent: 0.1,
                  ),
                  // Work Text
                  HpWorkText(),
                  // Filter Texts Row
                  HpFilterTexts(),
                  HpSpaceWidget(
                    heightPercent: 0.1,
                  ),
                  // Projects Grid
                  HpProjectsGrid(),
                  HpSpaceWidget(
                    heightPercent: 0.1,
                  ),
                  // Professional Text
                  // HpProfessionalText(),
                  // HpSpaceWidget(
                  //   heightPercent: 0.1,
                  // ),
                  // Footer Texts
                  HpFooterTexts(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton:
          scrollController.hasClients && scrollController.offset > 0
              ? FloatingActionButton(
                  onPressed: () {
                    scrollController.animateTo(
                        scrollController.position.minScrollExtent,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.linear);
                  },
                  shape: const CircleBorder(),
                  backgroundColor: Colors.cyan,
                  child: const Icon(
                    Icons.arrow_upward,
                    color: Colors.white,
                  ),
                )
              : const SizedBox(),
    );
  }
}
