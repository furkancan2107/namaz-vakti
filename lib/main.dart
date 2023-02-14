import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:namaz_vakti/pages/home_page.dart';
import 'package:namaz_vakti/pages/search_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;
  Widget secilenEkran = HomePage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 9, 34, 79),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.red.shade500,
            onPressed: () {},
            child: Icon(Icons.settings),
          ),
          bottomNavigationBar: AnimatedBottomNavigationBar(
            gapLocation: GapLocation.center,
            activeColor: Colors.blue,
            splashColor: Colors.red,
            icons: [Icons.home, Icons.search],
            activeIndex: _index,
            onTap: (p0) {
              setState(() {
                _index = p0;
                _index == 0
                    ? secilenEkran = HomePage()
                    : secilenEkran = SearchPage();
              });
            },
          ),
          body: _index == 0 ? HomePage() : SearchPage()),
    );
  }
}
