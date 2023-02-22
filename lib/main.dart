import 'package:bin_yuga_website/responsive.dart';
import 'package:flutter/material.dart';

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
        mobile: body(),
        tablet: body(),
        desktop: body(),
      ),
    );
  }
}

Widget body() {
  return LayoutBuilder(builder: (context, Constraints) {
    var parentHeight = Constraints.maxHeight;
    var parentWidth = Constraints.maxWidth;
    debugPrint('Max height :$parentHeight, max width: $parentWidth');
    return SingleChildScrollView(
      child: Column(children: [
        Stack(children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
              child: Positioned(
                right: 0,
                top: 0,
                child:
                    // SvgPicture.asset("assets/gruppy.svg")
                    Image.asset(
                  "assets/maskgroup.png",
                  width: MediaQuery.of(context).size.width / 2,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ]),
          Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                child: Positioned(
                  right: 0,
                  top: 0,
                  child:
                      // SvgPicture.asset("assets/gruppy.svg")
                      Image.asset(
                    "assets/curveback.png",
                    width: MediaQuery.of(context).size.width / 2,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ]),
          ),
          Row(
            children: [
              Image.asset(
                "assets/yugalogo.png",
                width: MediaQuery.of(context).size.width / 3,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text("About us"),
              SizedBox(width: 10,),
              Text("Services"),
              SizedBox(width: 10,)
              Text("Protfolio"),
              Text("Workshop & Training")],
          )
        ])
      ]),
    );
  });
}
