// ignore_for_file: must_be_immutable

part of 'iphone_13_mini_eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone13MiniEight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone13MiniEightEvent extends Equatable {}

/// Event that is dispatched when the Iphone13MiniEight widget is first created.
class Iphone13MiniEightInitialEvent extends Iphone13MiniEightEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends Iphone13MiniEightEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
