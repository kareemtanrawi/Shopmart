import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kareem_s_application1/presentation/iphone_13_mini_fourteen_screen/models/iphone_13_mini_fourteen_model.dart';
part 'iphone_13_mini_fourteen_event.dart';
part 'iphone_13_mini_fourteen_state.dart';

/// A bloc that manages the state of a Iphone13MiniFourteen according to the event that is dispatched to it.
class Iphone13MiniFourteenBloc
    extends Bloc<Iphone13MiniFourteenEvent, Iphone13MiniFourteenState> {
  Iphone13MiniFourteenBloc(Iphone13MiniFourteenState initialState)
      : super(initialState) {
    on<Iphone13MiniFourteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone13MiniFourteenInitialEvent event,
    Emitter<Iphone13MiniFourteenState> emit,
  ) async {}
}
