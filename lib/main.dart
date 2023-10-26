import 'package:flutter/material.dart';
import 'package:foodapp/pages/homepage.dart';
import 'package:foodapp/pages/startPages/startPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance(); // BAG
  final home = prefs.getBool('home') ?? false;

  runApp(MyApp(home: home));
}

class MyApp extends StatelessWidget {
  final bool home;

  const MyApp({
    Key? key,
    required this.home
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: showHomePage()
    );
  }

  Widget showHomePage() {
    return home ? const HomePage() : const StartPage();
  }
}
