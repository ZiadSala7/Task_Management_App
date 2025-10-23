import 'package:flutter/material.dart';

import '../../features/auth/presentation/views/login_view.dart';
import '../../features/auth/presentation/views/register_view.dart';
import '../../features/onboarding/views/auth_chooser_view.dart';
import '../../features/onboarding/views/onboarding_view.dart';
import '../../features/splash/views/splash_view.dart';

Map<String, WidgetBuilder> get allAppRoutes => {
  SplashView.id: (context) => const SplashView(),
  OnboardingView.id: (context) => const OnboardingView(),
  AuthChooserView.id: (context) => const AuthChooserView(),
  LoginView.id: (context) => const LoginView(),
  RegisterView.id: (context) => const RegisterView(),
};
