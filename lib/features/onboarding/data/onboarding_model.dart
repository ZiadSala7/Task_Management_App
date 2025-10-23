import 'package:flutter/widgets.dart';

import '../views/auth_chooser_view.dart';
import '../../../constants.dart';
import '../../../core/utils/app_assets.dart';
import '../../../generated/l10n.dart';

class OnboardingModel {
  final String image, title, desc;
  final bool isFirst, isLast;
  final Function() nextOnPressed, onBack;

  OnboardingModel({
    this.isFirst = false,
    this.isLast = false,
    required this.onBack,
    required this.image,
    required this.title,
    required this.desc,
    required this.nextOnPressed,
  });
}

List<OnboardingModel> onboardingModels(BuildContext context) => [
  OnboardingModel(
    image: AppAssets.assetsImagesOneOn,
    title: S.of(context).oneOnTitle,
    desc: S.of(context).oneOnDesc,
    nextOnPressed: () {
      controller.animateToPage(
        1,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    },
    isFirst: true,
    onBack: () {},
  ),
  OnboardingModel(
    image: AppAssets.assetsImagesTwoOn,
    title: S.of(context).twoOnTitle,
    desc: S.of(context).twoOnDesc,
    nextOnPressed: () {
      controller.animateToPage(
        2,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    },
    onBack: () {
      controller.animateToPage(
        0,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    },
  ),
  OnboardingModel(
    image: AppAssets.assetsImagesThreeOn,
    isLast: true,
    title: S.of(context).threeOnTitle,
    desc: S.of(context).threeOnDesc,
    nextOnPressed: () {
      Navigator.of(context).pushReplacementNamed(AuthChooserView.id);
    },
    onBack: () {
      controller.animateToPage(
        1,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    },
  ),
];
