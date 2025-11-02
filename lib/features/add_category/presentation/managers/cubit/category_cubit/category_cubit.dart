import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../dialogs/category/data/category_model.dart';
import 'category_states.dart';

class CategoryCubit extends Cubit<CategoryStates> {
  CategoryCubit() : super(InitialCategory());

  CategoryModel categoryModel = categories[4];
  initCategory(CategoryModel model) {
    categoryModel = CategoryModel(
      name: model.name,
      icon: model.icon,
      color: model.color,
    );
    emit(CategoryChoosen());
  }

  resetCategory() {
    categoryModel = categories[4];
    emit(InitialCategory());
  }
}
