import '../../../core/app_export.dart';

/// This class is used in the [electronicsgrid_item_widget] screen.
class ElectronicsgridItemModel {
  ElectronicsgridItemModel({
    this.electornics,
    this.id,
  }) {
    electornics = electornics ?? "Electornics";
    id = id ?? "";
  }

  String? electornics;

  String? id;
}
