import 'package:flutter/material.dart';
import 'package:portfolio/pages/home_page/widgets/hp_space_widget.dart';
import 'package:portfolio/pages/home_page/widgets/mobile/hpp_expertise_skills.dart';
import 'package:portfolio/pages/home_page/widgets/mobile/hpp_expertise_text.dart';
import 'package:portfolio/pages/home_page/widgets/mobile/hpp_filter_texts.dart';
import 'package:portfolio/pages/home_page/widgets/mobile/hpp_footer_texts.dart';
import 'package:portfolio/pages/home_page/widgets/mobile/hpp_header_title.dart';
import 'package:portfolio/pages/home_page/widgets/mobile/hpp_mobile_model.dart';
import 'package:portfolio/pages/home_page/widgets/mobile/hpp_my_work_detail.dart';
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
              HpSpaceWidget(
                heightPercent: 0.1,
              ),
              HppExpertiseText(),
              HpSpaceWidget(
                heightPercent: 0.1,
              ),
              HppExpertiseSkills(),
              HpSpaceWidget(
                heightPercent: 0.1,
              ),
              HppWorkTest(),
              HppMyWorkDetail(),
              HppMobileModel(),
              HpSpaceWidget(
                heightPercent: 0.05,
              ),
              HppFilterTexts(),
              HpSpaceWidget(
                heightPercent: 0.05,
              ),
              HppProjectsList(),
              HpSpaceWidget(
                heightPercent: 0.1,
              ),
              // HppProfessionalText(),
              // HpSpaceWidget(
              //   heightPercent: 0.1,
              // ),
              // HppExperienceTile(),
              // HpSpaceWidget(
              //   heightPercent: 0.1,
              // ),
              // HpExperienceTile(),
              HppAvailableText(),
              HpSpaceWidget(
                heightPercent: 0.05,
              ),
              HppContactText(),
              HpSpaceWidget(
                heightPercent: 0.05,
              ),
              HppEmailText(),
              HpSpaceWidget(
                heightPercent: 0.02,
              ),
              HppSocialTexts(text: 'Messenger'),
              HppSocialTexts(text: 'LinkedIn'),
              HppSocialTexts(text: 'Instagram'),
              HppSocialTexts(text: 'Github'),
              HpSpaceWidget(
                heightPercent: 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
