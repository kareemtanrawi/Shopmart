// ignore_for_file: must_be_immutable

part of 'iphone_13_mini_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone13MiniSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone13MiniSevenEvent extends Equatable {}

/// Event that is dispatched when the Iphone13MiniSeven widget is first created.
class Iphone13MiniSevenInitialEvent extends Iphone13MiniSevenEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends Iphone13MiniSevenEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
