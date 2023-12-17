// ignore_for_file: must_be_immutable

part of 'iphone_13_mini_eleven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone13MiniEleven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone13MiniElevenEvent extends Equatable {}

/// Event that is dispatched when the Iphone13MiniEleven widget is first created.
class Iphone13MiniElevenInitialEvent extends Iphone13MiniElevenEvent {
  @override
  List<Object?> get props => [];
}
