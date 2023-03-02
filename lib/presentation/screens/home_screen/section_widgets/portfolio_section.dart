import 'package:bin_yuga_website/presentation/utils/colors/web_site_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                bottom: 5, // Space between underline and text
              ),
              decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                  color: Colors.black,
                  width: 2.2, // Underline thickness
                )),
              ),
              child: Text(
                "Our Protfolio",
                textAlign: TextAlign.center,
                style: GoogleFonts.fredoka(
                  fontSize: MediaQuery.of(context).size.width / 60,
                  fontWeight: FontWeight.w500,
                  color: WebSiteColors().appBlack,
                  // decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Container(
              child: Image.asset(
                "assets/proellips.png",
                width: MediaQuery.of(context).size.width / 2,
                // height: MediaQuery.of(context).size.height / 10,
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
          ],
        )
      ]),
      Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width / 15,
              left: MediaQuery.of(context).size.width / 10,
            ),
            child: SvgPicture.asset(
              'assets/svg/gridimage.svg',
              width: MediaQuery.of(context).size.width / 2,
              // fit: BoxFit.fitWidth,
            ),
          )
        ],
      )
      // Padding(
      //   padding: EdgeInsets.only(
      //     top: MediaQuery.of(context).size.width / 40,
      //   ),
      //   child: Row(
      //     children: [
      //       Image.asset(
      //         "assets/purplellipse.png",
      //         width: MediaQuery.of(context).size.width / 2,
      //         height: MediaQuery.of(context).size.height / 2,
      //         fit: BoxFit.fitWidth,
      //       )
      //       // SvgPicture.asset(
      //       //   "assets/svg/gridimage.svg",
      //       //   width: MediaQuery.of(context).size.width / 2,
      //       //   height: MediaQuery.of(context).size.height / 2,
      //       //   fit: BoxFit.fitWidth,
      //       // ),
      //     ],
      //   ),
      // )
    ]);
  }
}
