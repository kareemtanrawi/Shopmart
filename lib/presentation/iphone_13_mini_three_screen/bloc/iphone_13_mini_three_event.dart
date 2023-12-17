// ignore_for_file: must_be_immutable

part of 'iphone_13_mini_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone13MiniThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone13MiniThreeEvent extends Equatable {}

/// Event that is dispatched when the Iphone13MiniThree widget is first created.
class Iphone13MiniThreeInitialEvent extends Iphone13MiniThreeEvent {
  @override
  List<Object?> get props => [];
}
