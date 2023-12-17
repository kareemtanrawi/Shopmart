import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kareem_s_application1/presentation/iphone_13_mini_three_screen/models/iphone_13_mini_three_model.dart';
part 'iphone_13_mini_three_event.dart';
part 'iphone_13_mini_three_state.dart';

/// A bloc that manages the state of a Iphone13MiniThree according to the event that is dispatched to it.
class Iphone13MiniThreeBloc
    extends Bloc<Iphone13MiniThreeEvent, Iphone13MiniThreeState> {
  Iphone13MiniThreeBloc(Iphone13MiniThreeState initialState)
      : super(initialState) {
    on<Iphone13MiniThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone13MiniThreeInitialEvent event,
    Emitter<Iphone13MiniThreeState> emit,
  ) async {}
}
