import '../../../core/app_export.dart';

/// This class is used in the [supermarketcomponent_item_widget] screen.
class SupermarketcomponentItemModel {
  SupermarketcomponentItemModel({
    this.supermarketImage,
    this.supermarketText,
    this.id,
  }) {
    supermarketImage = supermarketImage ?? ImageConstant.imgEllipse5;
    supermarketText = supermarketText ?? "Supermarket";
    id = id ?? "";
  }

  String? supermarketImage;

  String? supermarketText;

  String? id;
}
