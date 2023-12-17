// ignore_for_file: must_be_immutable

part of 'iphone_13_mini_fifteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone13MiniFifteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone13MiniFifteenEvent extends Equatable {}

/// Event that is dispatched when the Iphone13MiniFifteen widget is first created.
class Iphone13MiniFifteenInitialEvent extends Iphone13MiniFifteenEvent {
  @override
  List<Object?> get props => [];
}
