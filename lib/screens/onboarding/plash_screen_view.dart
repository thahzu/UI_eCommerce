import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controllers/plash_screens/splash_screen_item.dart';

class PlashScreenView extends StatefulWidget {
  const PlashScreenView({super.key});

  @override
  State<PlashScreenView> createState() => _PlashScreenViewState();
}

class _PlashScreenViewState extends State<PlashScreenView> {
  final controller = SplashScreenItems();
  final pageController = PageController();

  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: isLastPage
            ? getStarted()
            : Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // skip button
            TextButton(
              onPressed: () => pageController.jumpToPage(controller.items.length - 1),
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),

            // Indicator
            SmoothPageIndicator(
              controller: pageController,
              count: controller.items.length,
              onDotClicked: (index) => pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              ),
              effect: const WormEffect(
                activeDotColor: Colors.pink,
              ),
            ),

            // next button
            TextButton(
              onPressed: () => pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              ),
              child: const Text(
                "Next",
                style: TextStyle(color: Colors.pink, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: PageView.builder(
            onPageChanged: (index) => setState(() => isLastPage = controller.items.length - 1 == index),
            itemCount: controller.items.length,
            controller: pageController,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(controller.items[index].image),
                  const SizedBox(height: 15),
                  Text(
                    controller.items[index].title,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,fontFamily: "Montserrat",
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    controller.items[index].descriptions,
                    style: const TextStyle(color: Colors.grey, fontSize: 17,fontFamily: "Montserrat",),
                    textAlign: TextAlign.center,
                  ),
                ],
              );
            }),
      ),
    );
  }

  Widget getStarted() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.pink,
      ),
      width: MediaQuery.of(context).size.width * .9,
      height: 55,
      child: TextButton(
        onPressed: () => Navigator.pushNamed(context, '/login'),
        child: const Text(
          "Get started",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );;
  }
}
