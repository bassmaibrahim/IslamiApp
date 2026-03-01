import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:untitled/utils/app_colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      showDoneButton: false,
      next: Container(),
      done: Container(),
      onDone: () {},
      pages: [
        PageViewModel(
          title: "Title of introduction page",
          body: "Welcome to the app! This is a description of how it works.",
          image: const Center(child: Icon(Icons.waving_hand, size: 50.0)),
        ),
      ],
      globalBackgroundColor: AppColors.background,
      dotsDecorator: DotsDecorator(
        activeSize: Size(20, 10),
        size: Size.square(10),
        activeColor: AppColors.mainText,
        color: AppColors.greyColor,
        spacing: EdgeInsets.symmetric(horizontal: 5),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
