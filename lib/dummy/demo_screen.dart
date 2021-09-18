import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController = new PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
      ),
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              _page('page1', Colors.blue),
              _page('page2', Colors.red),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: 2,
                    effect: WormEffect(),
                    onDotClicked: (index) => _pageController.animateToPage(
                        index,
                        duration: Duration(microseconds: 500),
                        curve: Curves.easeInCubic),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

_page(String s, Color color) {
  return Container(
    color: color,
    child: Center(child: Text(s)),
  );
}