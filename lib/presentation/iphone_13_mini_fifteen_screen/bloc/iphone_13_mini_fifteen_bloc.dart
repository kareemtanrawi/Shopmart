import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/electronicsgrid_item_model.dart';
import 'package:kareem_s_application1/presentation/iphone_13_mini_fifteen_screen/models/iphone_13_mini_fifteen_model.dart';
part 'iphone_13_mini_fifteen_event.dart';
part 'iphone_13_mini_fifteen_state.dart';

/// A bloc that manages the state of a Iphone13MiniFifteen according to the event that is dispatched to it.
class Iphone13MiniFifteenBloc
    extends Bloc<Iphone13MiniFifteenEvent, Iphone13MiniFifteenState> {
  Iphone13MiniFifteenBloc(Iphone13MiniFifteenState initialState)
      : super(initialState) {
    on<Iphone13MiniFifteenInitialEvent>(_onInitialize);
  }

  List<ElectronicsgridItemModel> fillElectronicsgridItemList() {
    return [
      ElectronicsgridItemModel(electornics: "Electornics"),
      ElectronicsgridItemModel(electornics: "Fashion & Beauty"),
      ElectronicsgridItemModel(electornics: "Sports & Outdoors")
    ];
  }

  _onInitialize(
    Iphone13MiniFifteenInitialEvent event,
    Emitter<Iphone13MiniFifteenState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        iphone13MiniFifteenModelObj:
            state.iphone13MiniFifteenModelObj?.copyWith(
      electronicsgridItemList: fillElectronicsgridItemList(),
    )));
  }
}
