import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors/web_site_colors.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
    required this.screenWidth,
  });

  final Size screenWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width / 20,
                  bottom: MediaQuery.of(context).size.width / 20),
              alignment: Alignment.topLeft,
              child: Container(
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/binyuga_logo.png",
                      width: MediaQuery.of(context).size.width / 3,
                      fit: BoxFit.fitWidth,
                    ),
                    Positioned(
                        right: MediaQuery.of(context).size.width / 120,
                        bottom: MediaQuery.of(context).size.width / 18,
                        child: SvgPicture.asset(
                          'assets/svg/bubble1.svg',
                          height: MediaQuery.of(context).size.width / 90,
                          width: MediaQuery.of(context).size.width / 90,
                        )),
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.width / 14,
                        ),
                        Stack(
                          //alignment: Alignment.bottomLeft,
                          children: [
                            Positioned(
                              top: MediaQuery.of(context).size.width / 100,
                              child: SvgPicture.asset(
                                'assets/svg/bluerec1.svg',
                                height: MediaQuery.of(context).size.width / 12,
                              ),
                            ),
                            SvgPicture.asset(
                              'assets/svg/yellowrec1.svg',
                              height: MediaQuery.of(context).size.width / 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )),

        ///Logo
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 20,
                bottom: MediaQuery.of(context).size.width / 20),
            child: Image.asset(
              "assets/maskgroup.png",
              width: MediaQuery.of(context).size.width / 2,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),

        ///Computer image
      ]),
      Positioned(
        top: screenWidth.width / 6,
        right: screenWidth.width / 1.6,
        child: Row(
          children: [
            SizedBox(
              width: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: screenWidth.width / 10),
                  child: Text(
                    "Nurture Your Concept\nWith our Innovation",
                    style: TextStyle(
                      fontFamily: 'Baguile',
                      fontSize: MediaQuery.of(context).size.width / 30,
                      color: WebSiteColors().appBlack,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: screenWidth.width / 10),
                  child: Text(
                    "We make creative codes focused on the best innovations &\n"
                    "provide World class quality solutions to our customers.",
                    style: GoogleFonts.fredoka(
                      fontSize: MediaQuery.of(context).size.width / 80,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: screenWidth.width / 10,
                      top: screenWidth.width / 10),
                  child: InkWell(
                    onTap: () {},
                    child: Material(
                      elevation: 8,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width / 80,
                              vertical:
                                  MediaQuery.of(context).size.width / 140),
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xff820F43),
                                  Color(0xff02043A),
                                ],
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                          child: Center(
                            child: Text(
                              "Read more",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 75),
                            ),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Row(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(
            flex: 2,
            child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 50,
                    left: MediaQuery.of(context).size.width / 50,
                    bottom: MediaQuery.of(context).size.width / 30),
                child: SvgPicture.asset(
                  'assets/svg/strip1.svg',
                  width: MediaQuery.of(context).size.width / 1.6,
                  // fit: BoxFit.fitWidth,
                )),
          ),
        ],
      ),
      Row(
        children: [
          Expanded(flex: 1, child: Container()),
          //th
          Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.width / 30,
                    horizontal: MediaQuery.of(context).size.width / 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "About us",
                      style: GoogleFonts.fredoka(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: MediaQuery.of(context).size.width / 75),
                    ),
                    Text(
                      "Services",
                      style: GoogleFonts.fredoka(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: MediaQuery.of(context).size.width / 75),
                    ),
                    Text(
                      "Protfolio",
                      style: GoogleFonts.fredoka(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: MediaQuery.of(context).size.width / 75),
                    ),
                    Text(
                      "Workshop & Training",
                      style: GoogleFonts.fredoka(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: MediaQuery.of(context).size.width / 75),
                    ),
                    MaterialButton(
                        elevation: 4,
                        color: const Color(0xffFFFFFF),
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 40,
                            vertical: MediaQuery.of(context).size.width / 120),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {},
                        child: ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return const LinearGradient(
                              colors: [Color(0xffAA1056), Color(0xff210B32)],
                            ).createShader(bounds);
                          },
                          child: Text(
                            "Contact Us",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: MediaQuery.of(context).size.width / 75,
                              color: const Color(0xffFFFFFF),
                            ),
                          ),
                        )),
                  ],
                ),
              ))
        ],
      ),
      Positioned(
          top: screenWidth.width / 5,
          child: SvgPicture.asset(
            'assets/svg/curly.svg',
            width: screenWidth.width,
          )),
    ]);
  }
}
