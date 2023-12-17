// ignore_for_file: must_be_immutable

part of 'loginn_bloc.dart';

/// Represents the state of Loginn in the application.
class LoginnState extends Equatable {
  LoginnState({
    this.otpController,
    this.loginnModelObj,
  });

  TextEditingController? otpController;

  LoginnModel? loginnModelObj;

  @override
  List<Object?> get props => [
        otpController,
        loginnModelObj,
      ];
  LoginnState copyWith({
    TextEditingController? otpController,
    LoginnModel? loginnModelObj,
  }) {
    return LoginnState(
      otpController: otpController ?? this.otpController,
      loginnModelObj: loginnModelObj ?? this.loginnModelObj,
    );
  }
}
