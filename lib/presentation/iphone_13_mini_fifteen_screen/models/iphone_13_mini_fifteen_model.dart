// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'electronicsgrid_item_model.dart';

/// This class defines the variables used in the [iphone_13_mini_fifteen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone13MiniFifteenModel extends Equatable {
  Iphone13MiniFifteenModel({this.electronicsgridItemList = const []}) {}

  List<ElectronicsgridItemModel> electronicsgridItemList;

  Iphone13MiniFifteenModel copyWith(
      {List<ElectronicsgridItemModel>? electronicsgridItemList}) {
    return Iphone13MiniFifteenModel(
      electronicsgridItemList:
          electronicsgridItemList ?? this.electronicsgridItemList,
    );
  }

  @override
  List<Object?> get props => [electronicsgridItemList];
}
