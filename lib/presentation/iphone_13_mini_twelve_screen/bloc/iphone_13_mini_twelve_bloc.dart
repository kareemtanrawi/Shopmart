import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kareem_s_application1/presentation/iphone_13_mini_twelve_screen/models/iphone_13_mini_twelve_model.dart';
part 'iphone_13_mini_twelve_event.dart';
part 'iphone_13_mini_twelve_state.dart';

/// A bloc that manages the state of a Iphone13MiniTwelve according to the event that is dispatched to it.
class Iphone13MiniTwelveBloc
    extends Bloc<Iphone13MiniTwelveEvent, Iphone13MiniTwelveState> {
  Iphone13MiniTwelveBloc(Iphone13MiniTwelveState initialState)
      : super(initialState) {
    on<Iphone13MiniTwelveInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<Iphone13MiniTwelveState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _onInitialize(
    Iphone13MiniTwelveInitialEvent event,
    Emitter<Iphone13MiniTwelveState> emit,
  ) async {
    emit(state.copyWith(
        enterCodeController: TextEditingController(), radioGroup: ""));
  }
}
