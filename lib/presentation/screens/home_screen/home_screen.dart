import 'package:bin_yuga_website/presentation/screens/home_screen/section_widgets/about_us_section.dart';
import 'package:bin_yuga_website/presentation/screens/home_screen/section_widgets/header_section.dart';
import 'package:bin_yuga_website/presentation/screens/home_screen/section_widgets/our_servieces_section.dart';
import 'package:bin_yuga_website/presentation/screens/home_screen/section_widgets/portfolio_section.dart';
import 'package:bin_yuga_website/presentation/screens/home_screen/section_widgets/workshop_and_training_section.dart';
import 'package:flutter/material.dart';

import '../../../responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: webBody(),
        tablet: webBody(),
        desktop: webBody(),
      ),
    );
  }
}

Widget webBody() {
  Size screenWidth;
  return LayoutBuilder(builder: (context, constraints) {
    screenWidth = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
        HeaderSection(screenWidth: screenWidth),
        AboutUsSection(),

        ///todo for Prachi

        OurServicesSection(),

        ///todo for Vishal

        PortfolioSection(),

        ///todo for Prachi

        WorkShopAndTrainingSection(),

        ///todo for Vishal
      ]),
    );
  });
}
