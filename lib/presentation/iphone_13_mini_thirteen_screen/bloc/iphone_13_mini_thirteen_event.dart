// ignore_for_file: must_be_immutable

part of 'iphone_13_mini_thirteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone13MiniThirteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone13MiniThirteenEvent extends Equatable {}

/// Event that is dispatched when the Iphone13MiniThirteen widget is first created.
class Iphone13MiniThirteenInitialEvent extends Iphone13MiniThirteenEvent {
  @override
  List<Object?> get props => [];
}
