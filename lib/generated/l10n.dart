// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Manage your tasks`
  String get oneOnTitle {
    return Intl.message(
      'Manage your tasks',
      name: 'oneOnTitle',
      desc: '',
      args: [],
    );
  }

  /// `You can easily manage all of your daily \ntasks in DoMe for free`
  String get oneOnDesc {
    return Intl.message(
      'You can easily manage all of your daily \ntasks in DoMe for free',
      name: 'oneOnDesc',
      desc: '',
      args: [],
    );
  }

  /// `Create daily routine`
  String get twoOnTitle {
    return Intl.message(
      'Create daily routine',
      name: 'twoOnTitle',
      desc: '',
      args: [],
    );
  }

  /// `In Uptodo  you can create your \npersonalized routine to stay productive`
  String get twoOnDesc {
    return Intl.message(
      'In Uptodo  you can create your \npersonalized routine to stay productive',
      name: 'twoOnDesc',
      desc: '',
      args: [],
    );
  }

  /// `Organize your tasks`
  String get threeOnTitle {
    return Intl.message(
      'Organize your tasks',
      name: 'threeOnTitle',
      desc: '',
      args: [],
    );
  }

  /// `You can organize your daily tasks by \nadding your tasks into separate categories`
  String get threeOnDesc {
    return Intl.message(
      'You can organize your daily tasks by \nadding your tasks into separate categories',
      name: 'threeOnDesc',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Back`
  String get back {
    return Intl.message('Back', name: 'back', desc: '', args: []);
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message('Get Started', name: 'getStarted', desc: '', args: []);
  }

  /// `Welcome to UpTodo`
  String get authChooserTitle {
    return Intl.message(
      'Welcome to UpTodo',
      name: 'authChooserTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please login to your account or create \nnew account to continue`
  String get authChooserDesc {
    return Intl.message(
      'Please login to your account or create \nnew account to continue',
      name: 'authChooserDesc',
      desc: '',
      args: [],
    );
  }

  /// `LOGIN`
  String get login {
    return Intl.message('LOGIN', name: 'login', desc: '', args: []);
  }

  /// `CREATE ACCOUNT`
  String get createAccount {
    return Intl.message(
      'CREATE ACCOUNT',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginView {
    return Intl.message('Login', name: 'loginView', desc: '', args: []);
  }

  /// `Register`
  String get register {
    return Intl.message('Register', name: 'register', desc: '', args: []);
  }

  /// `Username`
  String get userName {
    return Intl.message('Username', name: 'userName', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Enter Your Username`
  String get enterUsername {
    return Intl.message(
      'Enter Your Username',
      name: 'enterUsername',
      desc: '',
      args: [],
    );
  }

  /// `▪▪▪▪▪▪▪▪▪`
  String get enterPassword {
    return Intl.message('▪▪▪▪▪▪▪▪▪', name: 'enterPassword', desc: '', args: []);
  }

  /// `Or`
  String get or {
    return Intl.message('Or', name: 'or', desc: '', args: []);
  }

  /// `Login with Google`
  String get logWithGoogle {
    return Intl.message(
      'Login with Google',
      name: 'logWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Login with Apple`
  String get logWithApple {
    return Intl.message(
      'Login with Apple',
      name: 'logWithApple',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account?`
  String get doNotHave {
    return Intl.message(
      'Don’t have an account?',
      name: 'doNotHave',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get HaveAcc {
    return Intl.message(
      'Already have an account?',
      name: 'HaveAcc',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPass {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPass',
      desc: '',
      args: [],
    );
  }

  /// `What do you want to do today?`
  String get emptyHomeTitle {
    return Intl.message(
      'What do you want to do today?',
      name: 'emptyHomeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Tap + to add your tasks`
  String get emptyHomeDesc {
    return Intl.message(
      'Tap + to add your tasks',
      name: 'emptyHomeDesc',
      desc: '',
      args: [],
    );
  }

  /// `Add Task`
  String get addTask {
    return Intl.message('Add Task', name: 'addTask', desc: '', args: []);
  }

  /// `Description`
  String get desc {
    return Intl.message('Description', name: 'desc', desc: '', args: []);
  }

  /// `Write your task here`
  String get titleTask {
    return Intl.message(
      'Write your task here',
      name: 'titleTask',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Calendar`
  String get calendar {
    return Intl.message('Calendar', name: 'calendar', desc: '', args: []);
  }

  /// `Focus`
  String get focus {
    return Intl.message('Focus', name: 'focus', desc: '', args: []);
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `Your Tasks`
  String get taskaty {
    return Intl.message('Your Tasks', name: 'taskaty', desc: '', args: []);
  }

  /// `Today`
  String get today {
    return Intl.message('Today', name: 'today', desc: '', args: []);
  }

  /// `Completed`
  String get completed {
    return Intl.message('Completed', name: 'completed', desc: '', args: []);
  }

  /// `Search for your task...`
  String get searchForTask {
    return Intl.message(
      'Search for your task...',
      name: 'searchForTask',
      desc: '',
      args: [],
    );
  }

  /// `Choose Time`
  String get chooseTime {
    return Intl.message('Choose Time', name: 'chooseTime', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `Add Category`
  String get addCategory {
    return Intl.message(
      'Add Category',
      name: 'addCategory',
      desc: '',
      args: [],
    );
  }

  /// `Choose Category`
  String get chooseCategory {
    return Intl.message(
      'Choose Category',
      name: 'chooseCategory',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
