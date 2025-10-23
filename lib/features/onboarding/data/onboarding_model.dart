import 'package:flutter/widgets.dart';
import 'package:task_management/features/onboarding/views/auth_chooser_view.dart';

import '../../../constants.dart';
import '../../../core/utils/app_assets.dart';
import '../../../generated/l10n.dart';

class OnboardingModel {
  final String image, title, desc;
  final bool isFirst, isLast;
  final Function(BuildContext context) nextOnPressed,
      skipOnPreessed,
      backOnPressed;

  OnboardingModel({
    this.isFirst = false,
    this.isLast = false,
    required this.image,
    required this.title,
    required this.desc,
    required this.nextOnPressed,
    required this.skipOnPreessed,
    required this.backOnPressed,
  });
}

List<OnboardingModel> onboardingModels(BuildContext context) => [
  OnboardingModel(
    image: AppAssets.assetsImagesOneOn,
    title: S.of(context).oneOnTitle,
    desc: S.of(context).oneOnDesc,
    nextOnPressed: (context) {
      controller.jumpToPage(1);
    },
    skipOnPreessed: (context) {},
    backOnPressed: (context) {},
    isFirst: true,
  ),
  OnboardingModel(
    image: AppAssets.assetsImagesTwoOn,
    title: S.of(context).twoOnTitle,
    desc: S.of(context).twoOnDesc,
    nextOnPressed: (context) {
      controller.jumpToPage(2);
    },
    skipOnPreessed: (context) {
      Navigator.of(context).pushReplacementNamed(AuthChooserView.id);
    },
    backOnPressed: (context) {},
  ),
  OnboardingModel(
    image: AppAssets.assetsImagesThreeOn,
    isLast: true,
    title: S.of(context).threeOnTitle,
    desc: S.of(context).threeOnDesc,
    nextOnPressed: (context) {
      Navigator.of(context).pushReplacementNamed(AuthChooserView.id);
    },
    skipOnPreessed: (context) {},
    backOnPressed: (context) {},
  ),
];
