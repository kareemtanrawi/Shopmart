import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kareem_s_application1/presentation/iphone_13_mini_eight_page/models/iphone_13_mini_eight_model.dart';
part 'iphone_13_mini_eight_event.dart';
part 'iphone_13_mini_eight_state.dart';

/// A bloc that manages the state of a Iphone13MiniEight according to the event that is dispatched to it.
class Iphone13MiniEightBloc
    extends Bloc<Iphone13MiniEightEvent, Iphone13MiniEightState> {
  Iphone13MiniEightBloc(Iphone13MiniEightState initialState)
      : super(initialState) {
    on<Iphone13MiniEightInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<Iphone13MiniEightState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _onInitialize(
    Iphone13MiniEightInitialEvent event,
    Emitter<Iphone13MiniEightState> emit,
  ) async {
    emit(state.copyWith(
        passwordController: TextEditingController(), isShowPassword: true));
  }
}
