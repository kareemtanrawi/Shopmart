import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kareem_s_application1/presentation/frame_335_screen/models/frame_335_model.dart';
part 'frame_335_event.dart';
part 'frame_335_state.dart';

/// A bloc that manages the state of a Frame335 according to the event that is dispatched to it.
class Frame335Bloc extends Bloc<Frame335Event, Frame335State> {
  Frame335Bloc(Frame335State initialState) : super(initialState) {
    on<Frame335InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Frame335InitialEvent event,
    Emitter<Frame335State> emit,
  ) async {}
}
