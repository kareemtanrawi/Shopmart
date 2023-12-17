import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kareem_s_application1/presentation/loginn_screen/models/loginn_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'loginn_event.dart';
part 'loginn_state.dart';

/// A bloc that manages the state of a Loginn according to the event that is dispatched to it.
class LoginnBloc extends Bloc<LoginnEvent, LoginnState> with CodeAutoFill {
  LoginnBloc(LoginnState initialState) : super(initialState) {
    on<LoginnInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<LoginnState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    LoginnInitialEvent event,
    Emitter<LoginnState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
