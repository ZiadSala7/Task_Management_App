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

  /// `Create new category`
  String get createCategory {
    return Intl.message(
      'Create new category',
      name: 'createCategory',
      desc: '',
      args: [],
    );
  }

  /// `Category name :`
  String get catName {
    return Intl.message('Category name :', name: 'catName', desc: '', args: []);
  }

  /// `Category Icon :`
  String get catIcon {
    return Intl.message('Category Icon :', name: 'catIcon', desc: '', args: []);
  }

  /// `Choose icon from library`
  String get chooseIcon {
    return Intl.message(
      'Choose icon from library',
      name: 'chooseIcon',
      desc: '',
      args: [],
    );
  }

  /// `Category color :`
  String get catClr {
    return Intl.message('Category color :', name: 'catClr', desc: '', args: []);
  }

  /// `Create Category`
  String get createCatBtn {
    return Intl.message(
      'Create Category',
      name: 'createCatBtn',
      desc: '',
      args: [],
    );
  }

  /// `Choose an Icon`
  String get chooseAnIcon {
    return Intl.message(
      'Choose an Icon',
      name: 'chooseAnIcon',
      desc: '',
      args: [],
    );
  }

  /// `Check all fields and try again`
  String get checkFields {
    return Intl.message(
      'Check all fields and try again',
      name: 'checkFields',
      desc: '',
      args: [],
    );
  }

  /// `Task Priority`
  String get priority {
    return Intl.message('Task Priority', name: 'priority', desc: '', args: []);
  }

  /// `Edit Task`
  String get editTask {
    return Intl.message('Edit Task', name: 'editTask', desc: '', args: []);
  }

  /// `Task Time:`
  String get taskTime {
    return Intl.message('Task Time:', name: 'taskTime', desc: '', args: []);
  }

  /// `Today at `
  String get todayAt {
    return Intl.message('Today at ', name: 'todayAt', desc: '', args: []);
  }

  /// `Task Category: `
  String get taskCate {
    return Intl.message(
      'Task Category: ',
      name: 'taskCate',
      desc: '',
      args: [],
    );
  }

  /// `Task Priority`
  String get taskPrio {
    return Intl.message('Task Priority', name: 'taskPrio', desc: '', args: []);
  }

  /// `Delete Task`
  String get deleteTask {
    return Intl.message('Delete Task', name: 'deleteTask', desc: '', args: []);
  }

  /// `Tasks Done`
  String get taskDone {
    return Intl.message('Tasks Done', name: 'taskDone', desc: '', args: []);
  }

  /// `Tasks Left`
  String get taskLeft {
    return Intl.message('Tasks Left', name: 'taskLeft', desc: '', args: []);
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `App Settings`
  String get appsettings {
    return Intl.message(
      'App Settings',
      name: 'appsettings',
      desc: '',
      args: [],
    );
  }

  /// `Change account name`
  String get changeAccName {
    return Intl.message(
      'Change account name',
      name: 'changeAccName',
      desc: '',
      args: [],
    );
  }

  /// `Change account password`
  String get changeAccPass {
    return Intl.message(
      'Change account password',
      name: 'changeAccPass',
      desc: '',
      args: [],
    );
  }

  /// `Change account image`
  String get changeAccImg {
    return Intl.message(
      'Change account image',
      name: 'changeAccImg',
      desc: '',
      args: [],
    );
  }

  /// `About US`
  String get aboutUs {
    return Intl.message('About US', name: 'aboutUs', desc: '', args: []);
  }

  /// `FAQ`
  String get faq {
    return Intl.message('FAQ', name: 'faq', desc: '', args: []);
  }

  /// `Help & Feedback`
  String get helpAndFeed {
    return Intl.message(
      'Help & Feedback',
      name: 'helpAndFeed',
      desc: '',
      args: [],
    );
  }

  /// `Support US`
  String get supportUs {
    return Intl.message('Support US', name: 'supportUs', desc: '', args: []);
  }

  /// `Log Out`
  String get logOut {
    return Intl.message('Log Out', name: 'logOut', desc: '', args: []);
  }

  /// `Account`
  String get acc {
    return Intl.message('Account', name: 'acc', desc: '', args: []);
  }

  /// `UpTodo`
  String get upTodo {
    return Intl.message('UpTodo', name: 'upTodo', desc: '', args: []);
  }

  /// `Are You sure you want to delete this task?`
  String get deleteTaskDesc {
    return Intl.message(
      'Are You sure you want to delete this task?',
      name: 'deleteTaskDesc',
      desc: '',
      args: [],
    );
  }

  /// `Task title : `
  String get taskTitleDel {
    return Intl.message(
      'Task title : ',
      name: 'taskTitleDel',
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
