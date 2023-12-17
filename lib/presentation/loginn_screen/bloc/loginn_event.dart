// ignore_for_file: must_be_immutable

part of 'loginn_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Loginn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginnEvent extends Equatable {}

/// Event that is dispatched when the Loginn widget is first created.
class LoginnInitialEvent extends LoginnEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends LoginnEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
