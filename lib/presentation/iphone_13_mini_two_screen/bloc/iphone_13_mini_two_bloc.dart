import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kareem_s_application1/presentation/iphone_13_mini_two_screen/models/iphone_13_mini_two_model.dart';
part 'iphone_13_mini_two_event.dart';
part 'iphone_13_mini_two_state.dart';

/// A bloc that manages the state of a Iphone13MiniTwo according to the event that is dispatched to it.
class Iphone13MiniTwoBloc
    extends Bloc<Iphone13MiniTwoEvent, Iphone13MiniTwoState> {
  Iphone13MiniTwoBloc(Iphone13MiniTwoState initialState) : super(initialState) {
    on<Iphone13MiniTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone13MiniTwoInitialEvent event,
    Emitter<Iphone13MiniTwoState> emit,
  ) async {}
}
