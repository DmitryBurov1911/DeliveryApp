import 'package:flutter/material.dart';
import 'package:foodapp/pages/startPages/pages/oneStartPage.dart';
import 'package:foodapp/pages/startPages/pages/threeStartPage.dart';
import 'package:foodapp/pages/startPages/pages/twoStartPage.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  _StartPageState createState() => _StartPageState();
}

PageController controller = PageController();

class _StartPageState extends State<StartPage> {
  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          OneStartPage(),
          const TwoStatePage(),
          const ThreeStartPage(),
        ],
      ),
    );
  }
}
