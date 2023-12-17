import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kareem_s_application1/presentation/iphone_13_mini_eight_tab_container_screen/models/iphone_13_mini_eight_tab_container_model.dart';
part 'iphone_13_mini_eight_tab_container_event.dart';
part 'iphone_13_mini_eight_tab_container_state.dart';

/// A bloc that manages the state of a Iphone13MiniEightTabContainer according to the event that is dispatched to it.
class Iphone13MiniEightTabContainerBloc extends Bloc<
    Iphone13MiniEightTabContainerEvent, Iphone13MiniEightTabContainerState> {
  Iphone13MiniEightTabContainerBloc(
      Iphone13MiniEightTabContainerState initialState)
      : super(initialState) {
    on<Iphone13MiniEightTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone13MiniEightTabContainerInitialEvent event,
    Emitter<Iphone13MiniEightTabContainerState> emit,
  ) async {}
}
