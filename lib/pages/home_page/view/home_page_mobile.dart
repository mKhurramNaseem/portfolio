import 'package:flutter/material.dart';
import 'package:portfolio/pages/home_page/widgets/mobile/hpp_experience_tile.dart';
import 'package:portfolio/pages/home_page/widgets/mobile/hpp_expertise_skills.dart';
import 'package:portfolio/pages/home_page/widgets/mobile/hpp_expertise_text.dart';
import 'package:portfolio/pages/home_page/widgets/mobile/hpp_filter_texts.dart';
import 'package:portfolio/pages/home_page/widgets/mobile/hpp_footer_texts.dart';
import 'package:portfolio/pages/home_page/widgets/mobile/hpp_header_title.dart';
import 'package:portfolio/pages/home_page/widgets/mobile/hpp_mobile_model.dart';
import 'package:portfolio/pages/home_page/widgets/mobile/hpp_my_work_detail.dart';
import 'package:portfolio/pages/home_page/widgets/mobile/hpp_professional_text.dart';
import 'package:portfolio/pages/home_page/widgets/mobile/hpp_projects_list.dart';
import 'package:portfolio/pages/home_page/widgets/mobile/hpp_work_test.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
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
              HppHeaderTitle(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 50,
                ),
              ),
              HppExpertiseText(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 30,
                ),
              ),
              HppExpertiseSkills(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 400,
                ),
              ),
              HppWorkTest(),
              HppMyWorkDetail(),
              HppMobileModel(),
              HppFilterTexts(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 40,
                ),
              ),
              HppProjectsList(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 80,
                ),
              ),
              HppProfessionalText(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              HppExperienceTile(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 50,
                ),
              ),
              // HpExperienceTile(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 50,
                ),
              ),
              HppAvailableText(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 40,
                ),
              ),
              HppContactText(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 50,
                ),
              ),
              HppEmailText(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 5,
                ),
              ),
              HppSocialTexts(text: 'Messenger'),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 5,
                ),
              ),
              HppSocialTexts(text: 'LinkedIn'),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 5,
                ),
              ),
              HppSocialTexts(text: 'Instagram'),
              SliverToBoxAdapter(
                child: SizedBox(height: 5),
              ),
              HppSocialTexts(text: 'Github'),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
