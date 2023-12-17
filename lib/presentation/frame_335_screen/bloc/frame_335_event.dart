// ignore_for_file: must_be_immutable

part of 'frame_335_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Frame335 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Frame335Event extends Equatable {}

/// Event that is dispatched when the Frame335 widget is first created.
class Frame335InitialEvent extends Frame335Event {
  @override
  List<Object?> get props => [];
}
