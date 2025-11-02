import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../managers/cubit/category_cubit/category_cubit.dart';
import '../../managers/cubit/category_cubit/category_states.dart';
import 'add_category_view_body.dart';


class AddCatBlocConsumer extends StatelessWidget {
  const AddCatBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoryCubit, CategoryStates>(
      builder: (context, state) {
        return AddCategoryViewBody();
      },
      listener: (BuildContext context, CategoryStates state) {},
    );
  }
}
