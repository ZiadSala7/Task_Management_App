import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../generated/l10n.dart';

class SearchView extends StatelessWidget {
  static const String id = 'searchView';
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTextFormField(
          title: S.of(context).searchForTask,
          hasPrefix: true,
        ),
      ),
    );
  }
}
