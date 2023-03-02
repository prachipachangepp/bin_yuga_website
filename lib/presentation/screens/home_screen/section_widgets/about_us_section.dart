import 'package:bin_yuga_website/presentation/utils/colors/web_site_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsSection extends StatelessWidget {
  const AboutUsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            padding: const EdgeInsets.only(
              bottom: 5, // Space between underline and text
            ),
            decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Colors.black, width: 2.2, style: BorderStyle.solid
                      // Underline thickness
                      )),
            ),
            child: Text(
              "About Us",
              textAlign: TextAlign.center,
              style: GoogleFonts.fredoka(
                fontSize: MediaQuery.of(context).size.width / 60,
                fontWeight: FontWeight.w500,
                color: WebSiteColors().appBlack,
                // decoration: TextDecoration.underline,
              ),
            ),
          ),
          // Container
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width / 40,
            ),
            child: Text(
              "Lorem ipsum Lorem ipsum dolor sit amet, consectetur adipiscing elit Praesent vitae ultricies justo. Praesent cursus a odio nec facilisis."
              "\nDonec nisi lacus, tristique vel nunc ut,pretium egestas neque. "
              "\nMauris quis eleifend magna. Sed ut dui ipsum. Sed posuere, ",
              textAlign: TextAlign.center,
              style: GoogleFonts.fredoka(
                fontSize: MediaQuery.of(context).size.width / 75,
                fontWeight: FontWeight.w500,
                color: WebSiteColors().smalltextcolor,
              ),
            ),
          ),
          // SizedBox(
          //   width: MediaQuery.of(context).size.width / 80,
          // ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width / 20,
              bottom: MediaQuery.of(context).size.width / 20,
            ),
            child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).copyWith().size.height / 3,
                  width: MediaQuery.of(context).copyWith().size.width / 4.5,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff820F43),
                          Color(0xffEC6EA8),
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.av_timer_outlined,
                            color: Colors.white, size: 30),
                      ),
                      Text(
                        "Our Story",
                        style: GoogleFonts.fredoka(
                            fontSize: MediaQuery.of(context).size.width / 75,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 80,
                ),
                Container(
                  height: MediaQuery.of(context).copyWith().size.height / 3,
                  width: MediaQuery.of(context).copyWith().size.width / 4.5,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff651B69),
                          Color(0xffE45EEC),
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.av_timer_outlined,
                            color: Colors.white, size: 30),
                      ),
                      Text(
                        "Our Mission",
                        style: GoogleFonts.fredoka(
                            fontSize: MediaQuery.of(context).size.width / 75,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 80,
                ),
                Container(
                  // height: MediaQuery.of(context).size.height / 120,
                  // width: MediaQuery.of(context).size.width / 120,
                  height: MediaQuery.of(context).copyWith().size.height / 3,
                  width: MediaQuery.of(context).copyWith().size.width / 4.5,

                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff052F7B),
                          Color(0xff62A7FD),
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      )),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.visibility_sharp,
                            color: Colors.white, size: 30),
                      ),
                      Text(
                        "Our Vision",
                        style: GoogleFonts.fredoka(
                            fontSize: MediaQuery.of(context).size.width / 75,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ]),
      // Stack(
      //   children: [
      //     Positioned(
      //         right: MediaQuery.of(context).size.width / 120,
      //         bottom: MediaQuery.of(context).size.width / 18,
      //         child: SvgPicture.asset(
      //           'assets/svg/bubble1.svg',
      //           height: MediaQuery.of(context).size.width / 90,
      //           width: MediaQuery.of(context).size.width / 90,
      //         ))
      //   ],
      // )
    ]);
  }
}
