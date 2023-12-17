// ignore_for_file: must_be_immutable

part of 'iphone_13_mini_fourteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone13MiniFourteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone13MiniFourteenEvent extends Equatable {}

/// Event that is dispatched when the Iphone13MiniFourteen widget is first created.
class Iphone13MiniFourteenInitialEvent extends Iphone13MiniFourteenEvent {
  @override
  List<Object?> get props => [];
}
