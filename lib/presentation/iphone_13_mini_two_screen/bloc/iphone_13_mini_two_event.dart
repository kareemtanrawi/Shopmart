// ignore_for_file: must_be_immutable

part of 'iphone_13_mini_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone13MiniTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone13MiniTwoEvent extends Equatable {}

/// Event that is dispatched when the Iphone13MiniTwo widget is first created.
class Iphone13MiniTwoInitialEvent extends Iphone13MiniTwoEvent {
  @override
  List<Object?> get props => [];
}
