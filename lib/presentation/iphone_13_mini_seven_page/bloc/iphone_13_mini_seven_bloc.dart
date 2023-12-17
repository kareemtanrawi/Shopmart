import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kareem_s_application1/presentation/iphone_13_mini_seven_page/models/iphone_13_mini_seven_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'iphone_13_mini_seven_event.dart';
part 'iphone_13_mini_seven_state.dart';

/// A bloc that manages the state of a Iphone13MiniSeven according to the event that is dispatched to it.
class Iphone13MiniSevenBloc
    extends Bloc<Iphone13MiniSevenEvent, Iphone13MiniSevenState>
    with CodeAutoFill {
  Iphone13MiniSevenBloc(Iphone13MiniSevenState initialState)
      : super(initialState) {
    on<Iphone13MiniSevenInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<Iphone13MiniSevenState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    Iphone13MiniSevenInitialEvent event,
    Emitter<Iphone13MiniSevenState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
