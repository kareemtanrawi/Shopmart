import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kareem_s_application1/presentation/iphone_13_mini_eleven_screen/models/iphone_13_mini_eleven_model.dart';
part 'iphone_13_mini_eleven_event.dart';
part 'iphone_13_mini_eleven_state.dart';

/// A bloc that manages the state of a Iphone13MiniEleven according to the event that is dispatched to it.
class Iphone13MiniElevenBloc
    extends Bloc<Iphone13MiniElevenEvent, Iphone13MiniElevenState> {
  Iphone13MiniElevenBloc(Iphone13MiniElevenState initialState)
      : super(initialState) {
    on<Iphone13MiniElevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone13MiniElevenInitialEvent event,
    Emitter<Iphone13MiniElevenState> emit,
  ) async {}
}
