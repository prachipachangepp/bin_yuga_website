import 'package:bin_yuga_website/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

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
  return LayoutBuilder(builder: (context, Constraints) {
    var parentHeight = Constraints.maxHeight;
    var parentWidth = Constraints.maxWidth;
    debugPrint('Max height :$parentHeight, max width: $parentWidth');
    return SingleChildScrollView(
      child: Column(children: [
        Stack(children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 20,
                      bottom: MediaQuery.of(context).size.width / 20),
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    "assets/binyuga_logo.png",
                    width: MediaQuery.of(context).size.width / 3,
                    fit: BoxFit.fitWidth,
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
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Image.asset('assets/bluerec.png'),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 65,
                      left: MediaQuery.of(context).size.width / 30,
                      bottom: MediaQuery.of(context).size.width / 30),
                  child: Image.asset(
                    "assets/curveback.png",
                    width: MediaQuery.of(context).size.width / 2,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              )
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
                        horizontal: MediaQuery.of(context).size.width / 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "About us",
                          style: GoogleFonts.fredoka(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.width / 60),
                        ),
                        Text(
                          "Services",
                          style: GoogleFonts.fredoka(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.width / 60),
                        ),
                        Text(
                          "Protfolio",
                          style: GoogleFonts.fredoka(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.width / 60),
                        ),
                        Text(
                          "Workshop & Training",
                          style: GoogleFonts.fredoka(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.width / 60),
                        )
                      ],
                    ),
                  ))
            ],
          )
        ]),
      ]),
    );
  });
}
