import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kareem_s_application1/presentation/ph_x_bold_screen/models/ph_x_bold_model.dart';
part 'ph_x_bold_event.dart';
part 'ph_x_bold_state.dart';

/// A bloc that manages the state of a PhXBold according to the event that is dispatched to it.
class PhXBoldBloc extends Bloc<PhXBoldEvent, PhXBoldState> {
  PhXBoldBloc(PhXBoldState initialState) : super(initialState) {
    on<PhXBoldInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PhXBoldInitialEvent event,
    Emitter<PhXBoldState> emit,
  ) async {}
}
