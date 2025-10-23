import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../onboarding/views/onboarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 5),
      () => Navigator.of(context).pushReplacementNamed(OnboardingView.id),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      delay: Duration(seconds: 2),
      child: Center(child: Image.asset(AppAssets.assetsImagesAppLogo)),
    );
  }
}
