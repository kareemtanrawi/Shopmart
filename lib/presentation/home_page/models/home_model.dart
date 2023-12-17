// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'supermarketcomponent_item_model.dart';
import 'viewhierarchy_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.supermarketcomponentItemList = const [],
    this.viewhierarchyItemList = const [],
  }) {}

  List<SupermarketcomponentItemModel> supermarketcomponentItemList;

  List<ViewhierarchyItemModel> viewhierarchyItemList;

  HomeModel copyWith({
    List<SupermarketcomponentItemModel>? supermarketcomponentItemList,
    List<ViewhierarchyItemModel>? viewhierarchyItemList,
  }) {
    return HomeModel(
      supermarketcomponentItemList:
          supermarketcomponentItemList ?? this.supermarketcomponentItemList,
      viewhierarchyItemList:
          viewhierarchyItemList ?? this.viewhierarchyItemList,
    );
  }

  @override
  List<Object?> get props =>
      [supermarketcomponentItemList, viewhierarchyItemList];
}
