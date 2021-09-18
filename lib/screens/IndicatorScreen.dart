import 'package:flutter/material.dart';
import 'package:flutter_slider/dummy/demo_screen.dart';
import 'package:flutter_slider/screens/Screen1.dart';
import 'package:flutter_slider/screens/Screen2.dart';
import 'package:flutter_slider/screens/Screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainIndicatorScreen extends StatefulWidget {
  const MainIndicatorScreen({Key? key}) : super(key: key);

  @override
  _MainIndicatorScreenState createState() => _MainIndicatorScreenState();
}

class _MainIndicatorScreenState extends State<MainIndicatorScreen> {
  PageController _pageController = new PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.black87,
        elevation: 0,
      ),
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              Screen1(),
              Screen2(),
              Screen3(),
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
                    count: 3,
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
