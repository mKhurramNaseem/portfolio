import 'package:flutter/material.dart';
import 'package:portfolio/pages/home_page/widgets/hp_expertise_skills.dart';
import 'package:portfolio/pages/home_page/widgets/hp_expertise_text.dart';
import 'package:portfolio/pages/home_page/widgets/hp_filter_texts.dart';
import 'package:portfolio/pages/home_page/widgets/hp_footer_texts.dart';
import 'package:portfolio/pages/home_page/widgets/hp_header_title.dart';
import 'package:portfolio/pages/home_page/widgets/hp_professional_text.dart';
import 'package:portfolio/pages/home_page/widgets/hp_projects_grid.dart';
import 'package:portfolio/pages/home_page/widgets/hp_work_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(
      () {},
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Scrollbar(
          interactive: true,
          controller: scrollController,
          thumbVisibility: true,
          trackVisibility: true,
          child: CustomScrollView(
            controller: scrollController,
            slivers: const [
              HpHeaderTitle(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 50,
                ),
              ),
              HpExpertiseText(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 30,
                ),
              ),
              HpExpertiseSkills(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 400,
                ),
              ),
              HpWorkText(),
              HpFilterTexts(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 40,
                ),
              ),
              HpProjectsGrid(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 80,
                ),
              ),
              HpProfessionalText(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 50,
                ),
              ),
              // HpExperienceTile(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 180,
                ),
              ),
              HpFooterTexts(),
            ],
          ),
        ),
      ),
    );
  }
}
