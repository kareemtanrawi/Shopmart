import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kareem_s_application1/presentation/iphone_13_mini_thirteen_screen/models/iphone_13_mini_thirteen_model.dart';
part 'iphone_13_mini_thirteen_event.dart';
part 'iphone_13_mini_thirteen_state.dart';

/// A bloc that manages the state of a Iphone13MiniThirteen according to the event that is dispatched to it.
class Iphone13MiniThirteenBloc
    extends Bloc<Iphone13MiniThirteenEvent, Iphone13MiniThirteenState> {
  Iphone13MiniThirteenBloc(Iphone13MiniThirteenState initialState)
      : super(initialState) {
    on<Iphone13MiniThirteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone13MiniThirteenInitialEvent event,
    Emitter<Iphone13MiniThirteenState> emit,
  ) async {}
}
