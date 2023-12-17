// ignore_for_file: must_be_immutable

part of 'iphone_13_mini_twelve_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone13MiniTwelve widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone13MiniTwelveEvent extends Equatable {}

/// Event that is dispatched when the Iphone13MiniTwelve widget is first created.
class Iphone13MiniTwelveInitialEvent extends Iphone13MiniTwelveEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends Iphone13MiniTwelveEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
