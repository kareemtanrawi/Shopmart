import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.image,
    this.text1,
    this.text2,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle59;
    text1 = text1 ?? "-50%";
    text2 = text2 ?? "-50%";
    id = id ?? "";
  }

  String? image;

  String? text1;

  String? text2;

  String? id;
}
